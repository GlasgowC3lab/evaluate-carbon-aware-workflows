# Imports
import sys


# Constants
TRACE = "TRACE"
CARBON_INTENSITY = "CARBON_INTENSITY"
TIMESTAMP_1 = "TIMESTAMP_1"
TIMESTAMP_2 = "TIMESTAMP_2"
TIMESTAMP_3 = "TIMESTAMP_3"
MODEL_NAME = "MODEL_NAME"
NODE_MEMORY = "NODE_MEMORY"
NO_OF_NODES = "NO_OF_NODES"


# Experimental Constants
jan_ci = 'gb-08012024-13012024'  
feb_ci = 'gb-12022024-17022024'  
mar_ci = 'gb-11032024-16032024'  
apr_ci = 'gb-08042024-13042024'  
may_ci = 'gb-13052024-18052024'  
jun_ci = 'gb-10062024-15062024'  
jul_ci = 'gb-08072024-13072024'  
aug_ci = 'gb-12082024-17082024'  
sep_ci = 'gb-09092024-14092024'  
oct_ci = 'gb-14102024-19102024'  
nov_ci = 'gb-11112024-16112024' 
dec_ci = 'gb-09122024-14122024'
jan_marg_ci = 'gb-08012024-13012024-marg'  
feb_marg_ci = 'gb-12022024-17022024-marg'  
mar_marg_ci = 'gb-11032024-16032024-marg'  
apr_marg_ci = 'gb-08042024-13042024-marg'  
may_marg_ci = 'gb-13052024-18052024-marg'  
jun_marg_ci = 'gb-10062024-15062024-marg'  
jul_marg_ci = 'gb-08072024-13072024-marg'  
aug_marg_ci = 'gb-12082024-17082024-marg'  
sep_marg_ci = 'gb-09092024-14092024-marg'  
oct_marg_ci = 'gb-14102024-19102024-marg'  
nov_marg_ci = 'gb-11112024-16112024-marg' 
dec_marg_ci = 'gb-09122024-14122024-marg'


# Functions
def parse_arguments(parts):
    arguments = {}

    if len(parts) != 8:
        print("Usage: python3 -m generate-commands.py trace model ci stamp-1 stamp-2 stamp-3 node-memory no-nodes")
        exit(-1)

    arguments[TRACE] = parts[0].strip()
    arguments[MODEL_NAME] = parts[1].strip()
    arguments[CARBON_INTENSITY] = parts[2].strip()
    arguments[TIMESTAMP_1] = int(parts[3])
    arguments[TIMESTAMP_2] = int(parts[4])
    arguments[TIMESTAMP_3] = int(parts[5])
    arguments[NODE_MEMORY] = float(parts[6])
    arguments[NO_OF_NODES] = int(parts[7])

    return arguments 


# General Utility Commands
def generate_year_adjust(trace, execution, timestamp):
    cmd = f"python3 -m src.scripts.Convertor change-time-ms {trace}-{execution}.csv , - 31622400000 {trace}-{execution}"
    updated_timestamp = timestamp - 31622400000
    return (cmd, updated_timestamp)


def generate_season_adjust(trace, execution, season, timestamp):
    (seas, month) = season
    return f"python3 -m src.scripts.Convertor change-start-ms {trace}-{execution}.csv , 2023-{month}-03:09-00 {timestamp} {trace}-{execution}-{seas}"


# Baseline Carbon Footprint Commands
def generate_carbon_footprint(trace, execution, carbon_intensity, model_name, pue=1.0, memory_power_draw=0.392):
    cmd = f"python3 -m src.scripts.CarbonFootprint {trace}-{execution} {carbon_intensity} {model_name} {pue} {memory_power_draw}"
    return cmd 


def generate_ichnos_call(trace, execution, carbon_intensity, model_name, interval, pue=1.0, memory_power_draw=0.392):
    return f"python3 -m src.scripts.IchnosCF {trace}-{execution} {carbon_intensity} {model_name} {interval} {pue} {memory_power_draw}"


def generate_ichnos_call_with_memory(trace, execution, carbon_intensity, model_name, interval, pue, memory_power_draw, node_memory, no_of_nodes):
    return f"{generate_ichnos_call(trace, execution, carbon_intensity, model_name, interval, pue, memory_power_draw)} {node_memory} {no_of_nodes}"


# Entire Workflow Shifting Commands
def generate_explorer_cmd(trace, execution, hours, carbon_intensity, model_name, pue=1.0, memory_power_draw=0.392):
    cmd = f"python3 -m src.scripts.Explorer {trace}-{execution}.csv {carbon_intensity}.csv default {hours} {model_name}"
    filename_footprint = f"output/explorer-{trace}-{execution}-{carbon_intensity}/explorer-{trace}-{execution}-{carbon_intensity}~footprint.csv"
    filename_summary = f"output/explorer-{trace}-{execution}-{carbon_intensity}/explorer-{trace}-{execution}-{carbon_intensity}~summary.txt"
    return (cmd, filename_footprint, filename_summary)


def generate_remove_for_explorer_file(files, hour):
    base_remove = f"mv FILE output/explorer-{hour * 2}h/"
    cmds = []

    cmds.append(f"mkdir output/explorer-{hour * 2}h/")

    for file in files:
        cmds.append(base_remove.replace('FILE', file))

    return cmds


def generate_move_for_file(trace, execution, file):
    return [f"mkdir output/summary-{trace}", f"mv output/{file} output/summary-{trace}/{trace}-{execution}-summary.txt"]


# Temporal Shifting Commands



def main(arguments):
    commands = []
    timestamps = [arguments[TIMESTAMP_1], arguments[TIMESTAMP_2], arguments[TIMESTAMP_3]]
    trace = arguments[TRACE]
    min_cpu = arguments[MIN_CPU]
    max_cpu = arguments[MAX_CPU]
    carbon_intensity = arguments[CARBON_INTENSITY]
    node_memory = arguments[NODE_MEMORY]
    no_of_nodes = arguments[NO_OF_NODES]

    if timestamps[0] >= YEAR_BOUND:
        for execution, timestamp in zip(range(1, 4), timestamps):
            (command, timestamp) = generate_year_adjust(trace, execution, timestamp)
            commands.append(command)

    for execution in range(1, 4):
        command = generate_carbon_footprint_plus_node_mem(trace, execution, min_cpu, max_cpu, carbon_intensity, node_memory, no_of_nodes)
        commands.append(command)
        commands.extend(generate_move_for_file(trace, execution, f"{trace}-{execution}-{carbon_intensity}-summary.txt"))


    for execution in range(1, 4):
        (command, footprint, summary) = generate_explorer_cmd(trace, execution, 24, carbon_intensity, min_cpu, max_cpu)
        remover = generate_remove_for_explorer_file([footprint, summary], 24)
        commands.append(command)    
        commands.extend(remover)
        (command, footprint, summary) = generate_explorer_cmd(trace, execution, 96, carbon_intensity, min_cpu, max_cpu)
        remover = generate_remove_for_explorer_file([footprint, summary], 96)
        commands.append(command)
        commands.extend(remover)

    # break to avoid too many commands in one block (!)
    commands.append('')
    commands.append('')

    for season in [('spr', '04'), ('sum', '07'), ('aut', '09'), ('win', '12')]:
        for execution, timestamp in zip(range(1, 4), timestamps):
            for region in ['uk', 'de', 'nl', 'fr', 'ca', 'tx']:
                cmd = generate_season_adjust(trace, execution, season, timestamp)
                commands.append(cmd)
                command = generate_carbon_footprint_trace(f"{trace}-{execution}-{season[0]}", min_cpu, max_cpu, f"{region}-{season[0]}-day")
                commands.append(command)
                commands.append(f"mv output/{trace}-{execution}-{season[0]}-{region}-{season[0]}-day-summary.txt output/summary-{trace}/")

    out_filename = f'commands-{trace}.txt'

    with open(out_filename, 'w') as f:
        for command in commands:
            f.write(f"{command}\n")

    return out_filename


# Main Program
if __name__ == '__main__':
    # Parse Arguments
    args = sys.argv[1:]
    arguments = parse_arguments(args)

    # Main Program
    out_filename = main(arguments)
    print(f'Commands Added to: [{out_filename}]')


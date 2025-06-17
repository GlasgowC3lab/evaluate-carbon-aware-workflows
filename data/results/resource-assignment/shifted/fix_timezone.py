import os


def update_timestamps(filename):
    with open(filename, 'r') as f:
        lines = f.readlines()

    parts = lines[1].split(',')
    start_stamp = int(parts[16])
    end_stamp = int(parts[17])

    change = 1 * 7 * 3600000

    parts[16] = str(start_stamp + change)
    parts[17] = str(end_stamp + change)

    with open(filename, 'w') as f:
        f.write(lines[0])
        f.write(','.join(parts))

if __name__ == '__main__':
    directory = os.fsencode('/Users/westkath/UofG/PhD/year-1/evaluate-carbon-aware-workflows/data/results/resource-assignment/shifted')
    
    for file in os.listdir(directory):
        filename = os.fsdecode(file)
        if filename.endswith(".csv"): 
            if "bowtie2_build-3" in filename:
                if "jan" in filename:
                    if "gpg13" in filename or "gpg14" in filename or "gpg15" in filename or "gpg22" in filename or "hu26" in filename:
                      # or "aug" in filename or "sep" in filename or "oct" in filename or "nov" in filename or "dec" in filename:
                        update_timestamps(filename)

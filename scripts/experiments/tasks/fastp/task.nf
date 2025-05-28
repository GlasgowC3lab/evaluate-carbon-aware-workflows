DATA_1 = channel.fromPath('REPLACE_HOME/journal-paper/tasks/data/REPLACE_INPUT_FILE_1')

process proc {
    conda "${moduleDir}/experiment.yml"

    input:
        path(vDATA_1)

    script:
    """
    fastp --stdout --in1 $vDATA_1 --out1 fastp-out.fastq.gz
    """
}

workflow {
    proc(DATA_1)
}

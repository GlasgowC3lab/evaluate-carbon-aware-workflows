DATA_1 = channel.fromPath('REPLACE_HOME/journal-paper/tasks/data/REPLACE_INPUT_FILE_1')
DATA_2 = channel.fromPath('REPLACE_HOME/journal-paper/tasks/data/REPLACE_INPUT_FILE_2')

process proc {
    conda "bioconda::fastqc=0.12.1"

    input:
        path(vDATA_1)
        path(vDATA_2)

    script:
    """
    fastqc --quiet $vDATA_1 $vDATA_2
    """
}

workflow {
    proc(DATA_1, DATA_2)
}

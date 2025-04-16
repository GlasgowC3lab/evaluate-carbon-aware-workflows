DATA_1 = channel.fromPath('REPLACE_HOME/journal-paper/tasks/data/REPLACE_INPUT_FILE_1')
DATA_2 = channel.fromPath('REPLACE_HOME/journal-paper/tasks/data/REPLACE_INPUT_FILE_2')

process proc {
    conda "bioconda::trim-galore=0.6.7"

    input:
        path(vDATA_1)
        path(vDATA_2)

    script:
    """
    trim_galore --fastqc_args --paired --gzip $vDATA_1 $vDATA_2
    """
}

workflow {
    proc(DATA_1, DATA_2)
}

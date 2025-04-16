DATA_1 = channel.fromPath('REPLACE_HOME/journal-paper/tasks/data/REPLACE_INPUT_FILE_1')

process proc {
    conda "bioconda::bowtie2=2.5.4"

    input:
        path(vDATA_1)

    script:

    """
    mkdir bowtie2
    bowtie2-build $vDATA_1 bowtie2/bowtie-out
    """
}

workflow {
    proc(DATA_1)
}

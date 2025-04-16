DATA_1 = channel.fromPath('REPLACE_HOME/journal-paper/tasks/data/REPLACE_INPUT_FILE_1')
DATA_2 = channel.fromPath('REPLACE_HOME/journal-paper/tasks/data/REPLACE_INPUT_FILE_2')

process proc {
    conda "biocontainers/samtools:1.21--h50ea8bc_0"

    input:
        path(vDATA_1)
        path(vDATA_2)

    script:
    def reference = vDATA_2 ? "--reference ${vDATA_2}" : ""

    """
    samtools stats ${reference} $vDATA_1 > samtools-stats-out.stats
    """
}

workflow {
    proc(DATA_1, DATA_2)
}

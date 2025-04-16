#!/bin/bash

tasks=( fastqc trimgalore fastp bowtie2 samtools_stats )
governors=( powersave ondemand performance )
outdir="$HOME/journal-paper/tasks/$task/output"
datadir="$HOME/journal-paper/tasks/data"
task_no=0
no_tasks=${#tasks[@]}

cleanDataFolder () {
    rm -rf "$datadir/*"
}

setupFastqcFiles () {
    cleanDataFolder
    wget 'ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR018/ERR018547/ERR018547_1.fastq.gz' -P "$datadir/"
    wget 'ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR018/ERR018547/ERR018547_2.fastq.gz' -P "$datadir/"
}

setupBowtieFiles () {
    cleanDataFolder
    wget 'ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/supporting/MT/chrMT_sequences_2534.20160101.fasta.gz' -P $datadir
    gunzip "$datadir/chrMT_sequences_2534.20160101.fasta.gz"
}

setupSamtoolsStatsFiles () {
    cleanDataFolder
    wget 'https://ftp.1000genomes.ebi.ac.uk/vol1/ftp/data_collections/1KG_ONT_VIENNA/hg38/HG00171.hg38.cram' -P "$datadir/"
    wget 'https://ftp.1000genomes.ebi.ac.uk/vol1/ftp/data_collections/1KG_ONT_VIENNA/hg38/HG00171.hg38.cram.crai' -P "$datadir/"
}

while [ $task_no -ne $no_tasks ]
do
    if [ "$task" == "fastqc" ]; then
        setupFastqcFiles
    fi

    if [ "$task" == "bowtie2" ]; then
        setupBowtieFiles
    fi

    if [ "$task" == "samtools_stats" ]; then
        setupSamtoolsStatsFiles
    fi

    for gov in ${governors[@]}
    do
        sudo cpupower frequency-set --governor $gov
        ./run-task.sh ${tasks[$task_no]}
        mv $outdir "$HOME/journal-paper/tasks/$task/output-$gov"
    done

    task_no=$(($task_no+1))
done

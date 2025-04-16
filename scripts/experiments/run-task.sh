#!/bin/bash

# script to run a nextflow workflow task (x3)

# Functions

# storeTrace TASK ITERATION
storeTrace () {
    mkdir -p "$maindir/output"
    cp task-trace.csv $maindir/output
    cp $task-$iteration.log $maindir/output
    mv $maindir/output/task-trace.csv $maindir/output/$1-$2.csv
}

# remove work data, nextflow logs and files, downloaded data
cleanFolder () {
    rm -rf work .nextflow*
}

task=$1
maindir="$HOME/journal-paper/tasks/$task"
fastqc_data=( ERR018547_1.fastq.gz ERR018547_2.fastq.gz )
bowtie2_data=( chrMT_sequences_2534.20160101.fasta )
fastp_data=( ERR018547_1.fastq.gz )
samtools_stats_data=( HG00171.hg38.cram HG00171.hg38.cram.crai )
trimgalore_data=( ERR018547_1.fastq.gz ERR018547_2.fastq.gz )

# Set-Up
find $maindir -type f -exec sed -i 's/REPLACE_HOME/$HOME/g' {} +
cleanFolder

declare -n files=$task"_data"

file_no=1
for file in ${files[@]}
do
    find $maindir -type f -exec sed -i 's/REPLACE_INPUT_FILE_$file_no/$file/g' {} +
    file_no=$(($file_no+1))

    if [ $file_no -eq 3 ]
    then
        file_no=1
    fi
done

# run task
iteration=1
while [ $iteration -ne 4 ]
do
    nextflow run $task/task.nf -c $task/nf-conda.config > $task-$iteration.log
    storeTrace $task $iteration
    cleanFolder
    iteration=$(($iteration+1))
done

#!/bin/bash

# script to run a nextflow workflow task (x3)

# Functions

# storeTrace TASK ITERATION
storeTrace () {
    mkdir -p "$maindir/output"
    mv task-trace.csv $maindir/output
    mv $task-$iteration.log $maindir/output
    mv $maindir/output/task-trace.csv $maindir/output/$1-$2.csv
}

# remove work data, nextflow logs and files, downloaded data
cleanFolder () {
    rm -rf work .nextflow*
}

task=$1
maindir="$HOME/journal-paper/tasks/$task"

# Set-Up
cleanFolder

# run task
iteration=1
while [ $iteration -ne 4 ]
do
    nextflow run $task/task.nf -c $task/nf-conda.config > $task-$iteration.log
    storeTrace $task $iteration
    cleanFolder
    iteration=$(($iteration+1))
done

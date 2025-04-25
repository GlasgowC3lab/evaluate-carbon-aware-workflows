#!/bin/bash

tasks=( fastqc trimgalore fastp bowtie2_build )
governors=( ondemand performance )
task_no=0
no_tasks=${#tasks[@]}
node='gpg13'

for gov in ${governors[@]}
do
    sudo cpupower frequency-set --governor $gov
    task_no=0
    while [ $task_no -ne $no_tasks ]
    do
        ./run-task.sh ${tasks[$task_no]}
        mv "$HOME/journal-paper/tasks/${tasks[$task_no]}/output" "$HOME/journal-paper/tasks/${tasks[$task_no]}/output-$node-$gov"
        task_no=$(($task_no+1))
    done
done

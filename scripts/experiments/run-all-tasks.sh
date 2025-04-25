#!/bin/bash

tasks=( fastqc trimgalore fastp bowtie2_build )
governors=( powersave ondemand performance )
task_no=0
no_tasks=${#tasks[@]}
node='gpg13'

while [ $task_no -ne $no_tasks ]
do
    for gov in ${governors[@]}
    do
        sudo cpupower frequency-set --governor $gov
        ./run-task.sh ${tasks[$task_no]}
        mv "$HOME/journal-paper/tasks/$task/output" "$HOME/journal-paper/tasks/$task/output-$node-$gov"
    done

    task_no=$(($task_no+1))
done

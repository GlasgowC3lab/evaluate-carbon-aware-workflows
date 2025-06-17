#!/bin/bash

#!/bin/bash

months=( jan feb mar apr may jun jul aug sep oct nov dec )
tasks=( bowtie2_build fastp fastqc trimgalore )
region=$1
month_no=0

# PERFORMANCE

# run the estimation for every task, on every machine, for every month of the year using specified CI data (avg + marg)
while [ $month_no -ne 12 ]
do
    for task in "${tasks[@]}"
    do
        # gpg13
        python3 -m src.scripts.IchnosCF gpg13-$task-performance-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg13_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-performance-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg13_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-performance-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg13_performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg13-$task-performance-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg13_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-performance-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg13_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-performance-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg13_performance_linear 5 1.0 0.392

        # gpg14
        python3 -m src.scripts.IchnosCF gpg14-$task-performance-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg14_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-performance-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg14_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-performance-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg14_performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg14-$task-performance-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg14_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-performance-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg14_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-performance-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg14_performance_linear 5 1.0 0.392

        # gpg15
        python3 -m src.scripts.IchnosCF gpg15-$task-performance-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg15_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-performance-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg15_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-performance-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg15_performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg15-$task-performance-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg15_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-performance-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg15_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-performance-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg15_performance_linear 5 1.0 0.392

        # gpg22
        python3 -m src.scripts.IchnosCF gpg22-$task-performance-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg22_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-performance-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg22_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-performance-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg22_performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg22-$task-performance-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg22_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-performance-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg22_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-performance-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg22_performance_linear 5 1.0 0.392

        # hu26
        python3 -m src.scripts.IchnosCF hu26-$task-performance-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid hu26_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-performance-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid hu26_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-performance-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid hu26_performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF hu26-$task-performance-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg hu26_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-performance-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg hu26_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-performance-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg hu26_performance_linear 5 1.0 0.392

    done

    month_no=$(($month_no+1))
done

# POWERSAVE
month_no=0

# run the estimation for every task, on every machine, for every month of the year using specified CI data (avg + marg)
while [ $month_no -ne 12 ]
do
    for task in "${tasks[@]}"
    do
        # gpg13
        python3 -m src.scripts.IchnosCF gpg13-$task-powersave-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg13_powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-powersave-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg13_powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-powersave-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg13_powersave_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg13-$task-powersave-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg13_powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-powersave-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg13_powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-powersave-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg13_powersave_linear 5 1.0 0.392

        # gpg14
        python3 -m src.scripts.IchnosCF gpg14-$task-powersave-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg14_powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-powersave-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg14_powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-powersave-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg14_powersave_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg14-$task-powersave-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg14_powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-powersave-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg14_powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-powersave-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg14_powersave_linear 5 1.0 0.392

        # gpg15
        python3 -m src.scripts.IchnosCF gpg15-$task-powersave-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg15_powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-powersave-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg15_powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-powersave-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg15_powersave_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg15-$task-powersave-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg15_powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-powersave-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg15_powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-powersave-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg15_powersave_linear 5 1.0 0.392

        # gpg22
        python3 -m src.scripts.IchnosCF gpg22-$task-powersave-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg22_powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-powersave-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg22_powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-powersave-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg22_powersave_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg22-$task-powersave-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg22_powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-powersave-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg22_powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-powersave-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg22_powersave_linear 5 1.0 0.392

        # hu26
        python3 -m src.scripts.IchnosCF hu26-$task-powersave-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid hu26_powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-powersave-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid hu26_powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-powersave-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid hu26_powersave_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF hu26-$task-powersave-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg hu26_powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-powersave-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg hu26_powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-powersave-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg hu26_powersave_linear 5 1.0 0.392
    done

    month_no=$(($month_no+1))
done


mkdir output/$region
mv output/*$region*.txt output/$region

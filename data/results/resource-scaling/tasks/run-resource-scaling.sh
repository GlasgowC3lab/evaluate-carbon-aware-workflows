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
        python3 -m src.scripts.IchnosCF gpg13-performance-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 64 1
        python3 -m src.scripts.IchnosCF gpg13-performance-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 64 1
        python3 -m src.scripts.IchnosCF gpg13-performance-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 64 1

        python3 -m src.scripts.IchnosCF gpg13-performance-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 64 1
        python3 -m src.scripts.IchnosCF gpg13-performance-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 64 1
        python3 -m src.scripts.IchnosCF gpg13-performance-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 64 1

        # gpg14
        python3 -m src.scripts.IchnosCF gpg14-performance-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 64 1
        python3 -m src.scripts.IchnosCF gpg14-performance-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 64 1
        python3 -m src.scripts.IchnosCF gpg14-performance-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 64 1

        python3 -m src.scripts.IchnosCF gpg14-performance-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 64 1
        python3 -m src.scripts.IchnosCF gpg14-performance-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 64 1
        python3 -m src.scripts.IchnosCF gpg14-performance-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 64 1

        # gpg15
        python3 -m src.scripts.IchnosCF gpg15-performance-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 64 1
        python3 -m src.scripts.IchnosCF gpg15-performance-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 64 1
        python3 -m src.scripts.IchnosCF gpg15-performance-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 64 1

        python3 -m src.scripts.IchnosCF gpg15-performance-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 64 1
        python3 -m src.scripts.IchnosCF gpg15-performance-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 64 1
        python3 -m src.scripts.IchnosCF gpg15-performance-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 64 1

        # gpg22
        python3 -m src.scripts.IchnosCF gpg22-performance-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 128 1
        python3 -m src.scripts.IchnosCF gpg22-performance-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 128 1
        python3 -m src.scripts.IchnosCF gpg22-performance-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 128 1

        python3 -m src.scripts.IchnosCF gpg22-performance-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 128 1
        python3 -m src.scripts.IchnosCF gpg22-performance-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 128 1
        python3 -m src.scripts.IchnosCF gpg22-performance-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 128 1

        # hu26
        python3 -m src.scripts.IchnosCF hu26-performance-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 256 1
        python3 -m src.scripts.IchnosCF hu26-performance-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 256 1
        python3 -m src.scripts.IchnosCF hu26-performance-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 256 1

        python3 -m src.scripts.IchnosCF hu26-performance-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 256 1
        python3 -m src.scripts.IchnosCF hu26-performance-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 256 1
        python3 -m src.scripts.IchnosCF hu26-performance-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 256 1

        # server
        python3 -m src.scripts.IchnosCF server-performance-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 32 1
        python3 -m src.scripts.IchnosCF server-performance-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 32 1
        python3 -m src.scripts.IchnosCF server-performance-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392 32 1

        python3 -m src.scripts.IchnosCF server-performance-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 32 1
        python3 -m src.scripts.IchnosCF server-performance-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 32 1
        python3 -m src.scripts.IchnosCF server-performance-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392 32 1
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
        python3 -m src.scripts.IchnosCF gpg13-powersave-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-powersave-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-powersave-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg13-powersave-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-powersave-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-powersave-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392

        # gpg14
        python3 -m src.scripts.IchnosCF gpg14-powersave-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-powersave-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-powersave-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg14-powersave-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-powersave-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-powersave-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392

        # gpg15
        python3 -m src.scripts.IchnosCF gpg15-powersave-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-powersave-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-powersave-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg15-powersave-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-powersave-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-powersave-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392

        # gpg22
        python3 -m src.scripts.IchnosCF gpg22-powersave-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-powersave-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-powersave-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg22-powersave-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-powersave-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-powersave-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392

        # hu26
        python3 -m src.scripts.IchnosCF hu26-powersave-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-powersave-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-powersave-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF hu26-powersave-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-powersave-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-powersave-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392

        # server
        python3 -m src.scripts.IchnosCF server-powersave-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392 32 1
        python3 -m src.scripts.IchnosCF server-powersave-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392 32 1
        python3 -m src.scripts.IchnosCF server-powersave-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid powersave_linear 60 1.0 0.392 32 1

        python3 -m src.scripts.IchnosCF server-powersave-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392 32 1
        python3 -m src.scripts.IchnosCF server-powersave-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392 32 1
        python3 -m src.scripts.IchnosCF server-powersave-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg powersave_linear 5 1.0 0.392 32 1
    done

    month_no=$(($month_no+1))
done


mkdir output/$region
mv output/*$region*.txt output/$region

#!/bin/bash

months=( jan feb mar apr may jun jul aug sep oct nov dec )
tasks=( bowtie2_build fastp fastqc trimgalore )
region=$1
month_no=0

# run the estimation for every task, on every machine, for every month of the year using specified CI data (avg + marg)
while [ $month_no -ne 12 ]
do
    for task in "${tasks[@]}"
    do
        # gcpc2
        python3 -m src.scripts.IchnosCF gcpc2-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gcpc2_default_minmax 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpc2-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gcpc2_default_minmax 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpc2-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gcpc2_default_minmax 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gcpc2-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gcpc2_default_minmax 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpc2-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gcpc2_default_minmax 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpc2-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gcpc2_default_minmax 5 1.0 0.392

        # gcpn1
        python3 -m src.scripts.IchnosCF gcpn1-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gcpn1_default_minmax 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn1-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gcpn1_default_minmax 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn1-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gcpn1_default_minmax 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gcpn1-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gcpn1_default_minmax 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn1-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gcpn1_default_minmax 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn1-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gcpn1_default_minmax 5 1.0 0.392

        # gcpn2
        python3 -m src.scripts.IchnosCF gcpn2-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gcpn2_default_minmax 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn2-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gcpn2_default_minmax 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn2-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gcpn2_default_minmax 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gcpn2-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gcpn2_default_minmax 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn2-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gcpn2_default_minmax 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn2-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gcpn2_default_minmax 5 1.0 0.392

        # gpg13
        python3 -m src.scripts.IchnosCF gpg13-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg13_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg13_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg13_performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg13-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg13_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg13_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg13_performance_linear 5 1.0 0.392

        # gpg14
        python3 -m src.scripts.IchnosCF gpg14-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg14_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg14_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg14_performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg14-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg14_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg14_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg14_performance_linear 5 1.0 0.392

        # gpg15
        python3 -m src.scripts.IchnosCF gpg15-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg15_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg15_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg15_performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg15-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg15_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg15_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg15_performance_linear 5 1.0 0.392

        # gpg22
        python3 -m src.scripts.IchnosCF gpg22-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg22_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg22_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid gpg22_performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg22-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg22_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg22_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg gpg22_performance_linear 5 1.0 0.392

        # hu26
        python3 -m src.scripts.IchnosCF hu26-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid hu26_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid hu26_performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid hu26_performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF hu26-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg hu26_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg hu26_performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg hu26_performance_linear 5 1.0 0.392

    done

    month_no=$(($month_no+1))
done

mkdir output/$region
mv output/*$region*.txt output/$region

#!/bin/bash

## for f in data/universal_traces/server-*; do [ -f "$f" ] && sed -i '' 's/-,,/server,,/g' "$f"; done

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
        python3 -m src.scripts.IchnosCF gcpc2-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid default_minmax 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpc2-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid default_minmax 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpc2-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid default_minmax 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gcpc2-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg default_minmax 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpc2-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg default_minmax 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpc2-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg default_minmax 5 1.0 0.392

        # gcpn1
        python3 -m src.scripts.IchnosCF gcpn1-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid default_minmax 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn1-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid default_minmax 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn1-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid default_minmax 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gcpn1-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg default_minmax 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn1-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg default_minmax 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn1-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg default_minmax 5 1.0 0.392

        # gcpn2
        python3 -m src.scripts.IchnosCF gcpn2-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid default_minmax 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn2-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid default_minmax 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn2-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid default_minmax 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gcpn2-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg default_minmax 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn2-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg default_minmax 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gcpn2-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg default_minmax 5 1.0 0.392

        # gpg13
        python3 -m src.scripts.IchnosCF gpg13-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg13-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg13-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392

        # gpg14
        python3 -m src.scripts.IchnosCF gpg14-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg14-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg14-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392

        # gpg15
        python3 -m src.scripts.IchnosCF gpg15-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg15-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg15-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392

        # gpg22
        python3 -m src.scripts.IchnosCF gpg22-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF gpg22-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF gpg22-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392

        # hu26
        python3 -m src.scripts.IchnosCF hu26-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid performance_linear 60 1.0 0.392

        python3 -m src.scripts.IchnosCF hu26-$task-1-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-2-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392
        python3 -m src.scripts.IchnosCF hu26-$task-3-${months[$month_no]} $region-2024-${months[$month_no]}-mid-marg performance_linear 5 1.0 0.392

    done

    month_no=$(($month_no+1))
done

mkdir output/$region
mv output/*$region*.txt output/$region

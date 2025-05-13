#!/bin/bash

# run for specified region
# loop over every month and dates 

months=( jan feb mar apr may jun jul aug sep oct nov dec )
monthly_ci=( 08012024-13012024 12022024-17022024 11032024-16032024 08042024-13042024 13052024-18052024 10062024-15062024 08072024-13072024 12082024-17082024 09092024-14092024 14102024-19102024 11112024-16112024 09122024-14122024 )
month_no=0

while [ $month_no -ne 12 ]
do
    ./run-entire-wf-shifting.sh ${months[$month_no]} $1 ${monthly_ci[$month_no]}
    month_no=$(($month_no+1))
done

mkdir output/$region
mv output/explorer-*/*.csv output/$region
find . -type d -empty -delete

#!/bin/bash

month=$1
region=$2
dates=$3

mkdir output/$region

# nanoseq workflow -- server node (35-123W, 32GB, 1 node) 
python3 -m src.scripts.TemporalInterrupt nanoseq-$month $region-$dates server_default_minmax 60 1.0 0.392
python3 -m src.scripts.TemporalInterrupt nanoseq-$month $region-$dates-marg server_default_minmax 5 1.0 0.392

# mag workflow -- cluster c node (HU) (80-135W, 256GB, 8 nodes)
python3 -m src.scripts.TemporalInterrupt mag-$month $region-$dates hu26_default_minmax 60 1.0 0.392
python3 -m src.scripts.TemporalInterrupt mag-$month $region-$dates-marg hu26_default_minmax 5 1.0 0.392

# rangeland workflow -- cluster c node (HU) (80-135W, 256GB, 8 nodes)
python3 -m src.scripts.TemporalInterrupt rangeland-$month $region-$dates hu26_default_minmax 60 1.0 0.392
python3 -m src.scripts.TemporalInterrupt rangeland-$month $region-$dates-marg hu26_default_minmax 5 1.0 0.392

# chipseq workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.TemporalInterrupt chipseq-$month $region-$dates clusterb_default_minmax 60 1.0 0.392
python3 -m src.scripts.TemporalInterrupt chipseq-$month $region-$dates-marg clusterb_default_minmax 5 1.0 0.392

# rnaseq workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.TemporalInterrupt rnaseq-$month $region-$dates clusterb_default_minmax 60 1.0 0.392
python3 -m src.scripts.TemporalInterrupt rnaseq-$month $region-$dates-marg clusterb_default_minmax 5 1.0 0.392

# sarek workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.TemporalInterrupt sarek-$month $region-$dates clusterb_default_minmax 60 1.0 0.392
python3 -m src.scripts.TemporalInterrupt sarek-$month $region-$dates-marg clusterb_default_minmax 5 1.0 0.392

# montage workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.TemporalInterrupt montage-$month $region-$dates clusterb_default_minmax 60 1.0 0.392
python3 -m src.scripts.TemporalInterrupt montage-$month $region-$dates-marg clusterb_default_minmax 5 1.0 0.392

# Clean Up
mv output/*-ts.csv output/$region

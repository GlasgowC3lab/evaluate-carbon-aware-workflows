#!/bin/bash

month=$1
region=$2
dates=$3

# nanoseq workflow -- server node (35-123W, 32GB, 1 node) 
python3 -m src.scripts.Explorer nanoseq-$month-1 $region-$dates 24 server_default_minmax 60 1.0 0.392
python3 -m src.scripts.Explorer nanoseq-$month-2 $region-$dates 24 server_default_minmax 60 1.0 0.392
python3 -m src.scripts.Explorer nanoseq-$month-3 $region-$dates 24 server_default_minmax 60 1.0 0.392

python3 -m src.scripts.Explorer nanoseq-$month-1 $region-$dates-marg 24 server_default_minmax 5 1.0 0.392
python3 -m src.scripts.Explorer nanoseq-$month-2 $region-$dates-marg 24 server_default_minmax 5 1.0 0.392
python3 -m src.scripts.Explorer nanoseq-$month-3 $region-$dates-marg 24 server_default_minmax 5 1.0 0.392

rm -rf output/nanoseq-*
rm -rf data/trace/nanoseq*~*

# mag workflow -- cluster c node (HU) (80-135W, 256GB, 8 nodes)
python3 -m src.scripts.Explorer mag-$month-1 $region-$dates 24 hu26_default_minmax 60 1.0 0.392
python3 -m src.scripts.Explorer mag-$month-2 $region-$dates 24 hu26_default_minmax 60 1.0 0.392
python3 -m src.scripts.Explorer mag-$month-3 $region-$dates 24 hu26_default_minmax 60 1.0 0.392

python3 -m src.scripts.Explorer mag-$month-1 $region-$dates-marg 24 hu26_default_minmax 5 1.0 0.392
python3 -m src.scripts.Explorer mag-$month-2 $region-$dates-marg 24 hu26_default_minmax 5 1.0 0.392
python3 -m src.scripts.Explorer mag-$month-3 $region-$dates-marg 24 hu26_default_minmax 5 1.0 0.392

rm -rf output/mag-*
rm -rf data/trace/mag*~*

# rangeland workflow -- cluster c node (HU) (80-135W, 256GB, 8 nodes)
python3 -m src.scripts.Explorer rangeland-$month-1 $region-$dates 24 hu26_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer rangeland-$month-2 $region-$dates 24 hu26_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer rangeland-$month-3 $region-$dates 24 hu26_default_minmax 60 1.0 0.392 

python3 -m src.scripts.Explorer rangeland-$month-1 $region-$dates-marg 24 hu26_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer rangeland-$month-2 $region-$dates-marg 24 hu26_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer rangeland-$month-3 $region-$dates-marg 24 hu26_default_minmax 5 1.0 0.392 

rm -rf output/rangeland-*
rm -rf data/trace/rangeland*~*

# chipseq workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.Explorer chipseq-$month-1 $region-$dates 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer chipseq-$month-2 $region-$dates 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer chipseq-$month-3 $region-$dates 24 clusterb_default_minmax 60 1.0 0.392 

python3 -m src.scripts.Explorer chipseq-$month-1 $region-$dates-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer chipseq-$month-2 $region-$dates-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer chipseq-$month-3 $region-$dates-marg 24 clusterb_default_minmax 5 1.0 0.392 

rm -rf output/chipseq-*
rm -rf data/trace/chipseq*~*

# rnaseq workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.Explorer rnaseq-$month-1 $region-$dates 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer rnaseq-$month-2 $region-$dates 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer rnaseq-$month-3 $region-$dates 24 clusterb_default_minmax 60 1.0 0.392 

python3 -m src.scripts.Explorer rnaseq-$month-1 $region-$dates-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer rnaseq-$month-2 $region-$dates-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer rnaseq-$month-3 $region-$dates-marg 24 clusterb_default_minmax 5 1.0 0.392 

rm -rf output/rnaseq-*
rm -rf data/trace/rnaseq*~*

# sarek workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.Explorer sarek-$month-1 $region-$dates 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer sarek-$month-2 $region-$dates 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer sarek-$month-3 $region-$dates 24 clusterb_default_minmax 60 1.0 0.392 

python3 -m src.scripts.Explorer sarek-$month-1 $region-$dates-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer sarek-$month-2 $region-$dates-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer sarek-$month-3 $region-$dates-marg 24 clusterb_default_minmax 5 1.0 0.392 

rm -rf output/sarek-*
rm -rf data/trace/sarek*~*

# montage workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.Explorer montage-$month-1 $region-$dates 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer montage-$month-2 $region-$dates 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer montage-$month-3 $region-$dates 24 clusterb_default_minmax 60 1.0 0.392 

python3 -m src.scripts.Explorer montage-$month-1 $region-$dates-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer montage-$month-2 $region-$dates-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer montage-$month-3 $region-$dates-marg 24 clusterb_default_minmax 5 1.0 0.392 

rm -rf output/montage-*
rm -rf data/trace/montage*~*

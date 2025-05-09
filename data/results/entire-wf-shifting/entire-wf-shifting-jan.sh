#!/bin/bash

# Region -- GB

# Month -- January (gb-08012024-13012024)

# nanoseq workflow -- server node (35-123W, 32GB, 1 node) 
python3 -m src.scripts.Explorer nanoseq-jan-1 gb-08012024-13012024 24 server_default_minmax 60 1.0 0.392
python3 -m src.scripts.Explorer nanoseq-jan-2 gb-08012024-13012024 24 server_default_minmax 60 1.0 0.392
python3 -m src.scripts.Explorer nanoseq-jan-3 gb-08012024-13012024 24 server_default_minmax 60 1.0 0.392

python3 -m src.scripts.Explorer nanoseq-jan-1 gb-08012024-13012024-marg 24 server_default_minmax 5 1.0 0.392
python3 -m src.scripts.Explorer nanoseq-jan-2 gb-08012024-13012024-marg 24 server_default_minmax 5 1.0 0.392
python3 -m src.scripts.Explorer nanoseq-jan-3 gb-08012024-13012024-marg 24 server_default_minmax 5 1.0 0.392

rm -rf output/nanoseq-*
rm -rf data/trace/nanoseq*~*

# mag workflow -- cluster c node (HU) (80-135W, 256GB, 8 nodes)
python3 -m src.scripts.Explorer mag-jan-1 gb-08012024-13012024 24 hu26_default_minmax 60 1.0 0.392
python3 -m src.scripts.Explorer mag-jan-2 gb-08012024-13012024 24 hu26_default_minmax 60 1.0 0.392
python3 -m src.scripts.Explorer mag-jan-3 gb-08012024-13012024 24 hu26_default_minmax 60 1.0 0.392

python3 -m src.scripts.Explorer mag-jan-1 gb-08012024-13012024-marg 24 hu26_default_minmax 5 1.0 0.392
python3 -m src.scripts.Explorer mag-jan-2 gb-08012024-13012024-marg 24 hu26_default_minmax 5 1.0 0.392
python3 -m src.scripts.Explorer mag-jan-3 gb-08012024-13012024-marg 24 hu26_default_minmax 5 1.0 0.392

rm -rf output/mag-*
rm -rf data/trace/mag*~*

# rangeland workflow -- cluster c node (HU) (80-135W, 256GB, 8 nodes)
python3 -m src.scripts.Explorer rangeland-jan-1 gb-08012024-13012024 24 hu26_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer rangeland-jan-2 gb-08012024-13012024 24 hu26_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer rangeland-jan-3 gb-08012024-13012024 24 hu26_default_minmax 60 1.0 0.392 

python3 -m src.scripts.Explorer rangeland-jan-1 gb-08012024-13012024-marg 24 hu26_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer rangeland-jan-2 gb-08012024-13012024-marg 24 hu26_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer rangeland-jan-3 gb-08012024-13012024-marg 24 hu26_default_minmax 5 1.0 0.392 

rm -rf output/rangeland-*
rm -rf data/trace/rangeland*~*

# chipseq workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.Explorer chipseq-jan-1 gb-08012024-13012024 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer chipseq-jan-2 gb-08012024-13012024 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer chipseq-jan-3 gb-08012024-13012024 24 clusterb_default_minmax 60 1.0 0.392 

python3 -m src.scripts.Explorer chipseq-jan-1 gb-08012024-13012024-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer chipseq-jan-2 gb-08012024-13012024-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer chipseq-jan-3 gb-08012024-13012024-marg 24 clusterb_default_minmax 5 1.0 0.392 

rm -rf output/chipseq-*
rm -rf data/trace/chipseq*~*

# rnaseq workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.Explorer rnaseq-jan-1 gb-08012024-13012024 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer rnaseq-jan-2 gb-08012024-13012024 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer rnaseq-jan-3 gb-08012024-13012024 24 clusterb_default_minmax 60 1.0 0.392 

python3 -m src.scripts.Explorer rnaseq-jan-1 gb-08012024-13012024-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer rnaseq-jan-2 gb-08012024-13012024-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer rnaseq-jan-3 gb-08012024-13012024-marg 24 clusterb_default_minmax 5 1.0 0.392 

rm -rf output/rnaseq-*
rm -rf data/trace/rnaseq*~*

# sarek workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.Explorer sarek-jan-1 gb-08012024-13012024 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer sarek-jan-2 gb-08012024-13012024 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer sarek-jan-3 gb-08012024-13012024 24 clusterb_default_minmax 60 1.0 0.392 

python3 -m src.scripts.Explorer sarek-jan-1 gb-08012024-13012024-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer sarek-jan-2 gb-08012024-13012024-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer sarek-jan-3 gb-08012024-13012024-marg 24 clusterb_default_minmax 5 1.0 0.392 

rm -rf output/sarek-*
rm -rf data/trace/sarek*~*

# montage workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.Explorer montage-jan-1 gb-08012024-13012024 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer montage-jan-2 gb-08012024-13012024 24 clusterb_default_minmax 60 1.0 0.392 
python3 -m src.scripts.Explorer montage-jan-3 gb-08012024-13012024 24 clusterb_default_minmax 60 1.0 0.392 

python3 -m src.scripts.Explorer montage-jan-1 gb-08012024-13012024-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer montage-jan-2 gb-08012024-13012024-marg 24 clusterb_default_minmax 5 1.0 0.392 
python3 -m src.scripts.Explorer montage-jan-3 gb-08012024-13012024-marg 24 clusterb_default_minmax 5 1.0 0.392 

rm -rf output/montage-*
rm -rf data/trace/montage*~*

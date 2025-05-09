#!/bin/bash

# Baseline Commands -- get footprint for workflows at the original execution time, using CI data aligning with that execution

# nanoseq workflow -- server node (35-123W, 32GB, 1 node) 
python3 -m src.scripts.IchnosCF nanoseq-1 gb-31082024-30092024 server_default_minmax 60 1.0 0.392 32 1
python3 -m src.scripts.IchnosCF nanoseq-2 gb-31082024-30092024 server_default_minmax 60 1.0 0.392 32 1
python3 -m src.scripts.IchnosCF nanoseq-3 gb-31082024-30092024 server_default_minmax 60 1.0 0.392 32 1

python3 -m src.scripts.IchnosCF nanoseq-1 gb-31082024-30092024-marg server_default_minmax 5 1.0 0.392 32 1
python3 -m src.scripts.IchnosCF nanoseq-2 gb-31082024-30092024-marg server_default_minmax 5 1.0 0.392 32 1
python3 -m src.scripts.IchnosCF nanoseq-3 gb-31082024-30092024-marg server_default_minmax 5 1.0 0.392 32 1

# mag workflow -- cluster c node (HU) (80-135W, 256GB, 8 nodes)
python3 -m src.scripts.IchnosCF mag-1 de-09052024-01082024 hu26_default_minmax 60 1.0 0.392 256 8
python3 -m src.scripts.IchnosCF mag-2 de-09052024-01082024 hu26_default_minmax 60 1.0 0.392 256 8
python3 -m src.scripts.IchnosCF mag-3 de-09052024-01082024 hu26_default_minmax 60 1.0 0.392 256 8

python3 -m src.scripts.IchnosCF mag-1 de-09052024-01082024-marg hu26_default_minmax 5 1.0 0.392 256 8
python3 -m src.scripts.IchnosCF mag-2 de-09052024-01082024-marg hu26_default_minmax 5 1.0 0.392 256 8
python3 -m src.scripts.IchnosCF mag-3 de-09052024-01082024-marg hu26_default_minmax 5 1.0 0.392 256 8

# rangeland workflow -- cluster c node (HU) (80-135W, 256GB, 8 nodes)
python3 -m src.scripts.IchnosCF rangeland-1 de-09052024-01082024 hu26_default_minmax 60 1.0 0.392 256 8
python3 -m src.scripts.IchnosCF rangeland-2 de-09052024-01082024 hu26_default_minmax 60 1.0 0.392 256 8
python3 -m src.scripts.IchnosCF rangeland-3 de-09052024-01082024 hu26_default_minmax 60 1.0 0.392 256 8

python3 -m src.scripts.IchnosCF rangeland-1 de-09052024-01082024-marg hu26_default_minmax 5 1.0 0.392 256 8
python3 -m src.scripts.IchnosCF rangeland-2 de-09052024-01082024-marg hu26_default_minmax 5 1.0 0.392 256 8
python3 -m src.scripts.IchnosCF rangeland-3 de-09052024-01082024-marg hu26_default_minmax 5 1.0 0.392 256 8

# chipseq workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.IchnosCF chipseq-1 de-15112023-08122023 clusterb_default_minmax 60 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF chipseq-2 de-15112023-08122023 clusterb_default_minmax 60 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF chipseq-3 de-15112023-08122023 clusterb_default_minmax 60 1.0 0.392 128 8

python3 -m src.scripts.IchnosCF chipseq-1 de-15112023-08122023-marg clusterb_default_minmax 5 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF chipseq-2 de-15112023-08122023-marg clusterb_default_minmax 5 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF chipseq-3 de-15112023-08122023-marg clusterb_default_minmax 5 1.0 0.392 128 8

# rnaseq workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.IchnosCF rnaseq-1 de-15112023-08122023 clusterb_default_minmax 60 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF rnaseq-2 de-15112023-08122023 clusterb_default_minmax 60 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF rnaseq-3 de-15112023-08122023 clusterb_default_minmax 60 1.0 0.392 128 8

python3 -m src.scripts.IchnosCF rnaseq-1 de-15112023-08122023-marg clusterb_default_minmax 5 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF rnaseq-2 de-15112023-08122023-marg clusterb_default_minmax 5 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF rnaseq-3 de-15112023-08122023-marg clusterb_default_minmax 5 1.0 0.392 128 8

# sarek workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.IchnosCF sarek-1 de-15112023-08122023 clusterb_default_minmax 60 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF sarek-2 de-15112023-08122023 clusterb_default_minmax 60 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF sarek-3 de-15112023-08122023 clusterb_default_minmax 60 1.0 0.392 128 8

python3 -m src.scripts.IchnosCF sarek-1 de-15112023-08122023-marg clusterb_default_minmax 5 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF sarek-2 de-15112023-08122023-marg clusterb_default_minmax 5 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF sarek-3 de-15112023-08122023-marg clusterb_default_minmax 5 1.0 0.392 128 8

# montage workflow -- cluster b node (TU) (113-262W, 128GB, 8 nodes)
python3 -m src.scripts.IchnosCF montage-1 de-01012024-31012024 clusterb_default_minmax 60 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF montage-2 de-01012024-31012024 clusterb_default_minmax 60 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF montage-3 de-01012024-31012024 clusterb_default_minmax 60 1.0 0.392 128 8

python3 -m src.scripts.IchnosCF montage-1 de-01012024-31012024-marg clusterb_default_minmax 5 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF montage-2 de-01012024-31012024-marg clusterb_default_minmax 5 1.0 0.392 128 8
python3 -m src.scripts.IchnosCF montage-3 de-01012024-31012024-marg clusterb_default_minmax 5 1.0 0.392 128 8

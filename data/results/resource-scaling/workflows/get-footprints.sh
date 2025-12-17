#!/bin/bash

# Region - gb

python -m src.scripts.IchnosCF rnaseq-performance-1 gb-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 gb-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 gb-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 gb-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 gb-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 gb-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-performance-1 gb-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 gb-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 gb-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 gb-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 gb-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 gb-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

# chipseq
python -m src.scripts.IchnosCF chipseq-performance-1 gb-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 gb-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 gb-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 gb-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 gb-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 gb-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-performance-1 gb-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 gb-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 gb-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 gb-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 gb-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 gb-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

# Region - ca

python -m src.scripts.IchnosCF rnaseq-performance-1 ca-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 ca-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 ca-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 ca-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 ca-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 ca-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-performance-1 ca-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 ca-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 ca-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 ca-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 ca-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 ca-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-performance-1 ca-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 ca-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 ca-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 ca-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 ca-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 ca-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-performance-1 ca-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 ca-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 ca-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 ca-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 ca-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 ca-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

# Region - de

python -m src.scripts.IchnosCF rnaseq-performance-1 de-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 de-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 de-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 de-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 de-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 de-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-performance-1 de-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 de-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 de-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 de-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 de-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 de-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-performance-1 de-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 de-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 de-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 de-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 de-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 de-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-performance-1 de-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 de-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 de-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 de-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 de-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 de-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

# Region - tx

python -m src.scripts.IchnosCF rnaseq-performance-1 tx-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 tx-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 tx-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 tx-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 tx-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 tx-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-performance-1 tx-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 tx-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 tx-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 tx-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 tx-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 tx-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-performance-1 tx-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 tx-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 tx-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 tx-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 tx-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 tx-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-performance-1 tx-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 tx-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 tx-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 tx-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 tx-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 tx-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

# Region - tyo

python -m src.scripts.IchnosCF rnaseq-performance-1 tyo-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 tyo-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 tyo-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 tyo-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 tyo-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 tyo-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-performance-1 tyo-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 tyo-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 tyo-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 tyo-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 tyo-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 tyo-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-performance-1 tyo-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 tyo-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 tyo-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 tyo-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 tyo-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 tyo-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-performance-1 tyo-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 tyo-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 tyo-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 tyo-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 tyo-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 tyo-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

# Region - nsw

python -m src.scripts.IchnosCF rnaseq-performance-1 nsw-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 nsw-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 nsw-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 nsw-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 nsw-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 nsw-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-performance-1 nsw-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 nsw-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 nsw-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 nsw-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 nsw-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 nsw-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-performance-1 nsw-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 nsw-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 nsw-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 nsw-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 nsw-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 nsw-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-performance-1 nsw-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 nsw-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 nsw-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 nsw-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 nsw-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 nsw-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

# Region - zaf 

python -m src.scripts.IchnosCF rnaseq-performance-1 zaf-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 zaf-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 zaf-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 zaf-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 zaf-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 zaf-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-performance-1 zaf-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-2 zaf-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-performance-3 zaf-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF rnaseq-powersave-1 zaf-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-2 zaf-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF rnaseq-powersave-3 zaf-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-performance-1 zaf-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 zaf-2024-wf-scale performance_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 zaf-2024-wf-scale performance_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 zaf-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 zaf-2024-wf-scale powersave_linear 60 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 zaf-2024-wf-scale powersave_linear 60 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-performance-1 zaf-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-2 zaf-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-performance-3 zaf-2024-wf-scale-marg performance_linear 5 1.0 0.392 256 8

python -m src.scripts.IchnosCF chipseq-powersave-1 zaf-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-2 zaf-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8
python -m src.scripts.IchnosCF chipseq-powersave-3 zaf-2024-wf-scale-marg powersave_linear 5 1.0 0.392 256 8

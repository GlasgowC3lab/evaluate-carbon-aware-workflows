#!/bin/bash

ts_rnaseq=(  )
ts_chipseq=(  )


# subtract 1 year from all timestamps

python3 -m src.scripts.Convertor change-time-ms rnaseq-performance-1.csv , - 31622400000 rnaseq-performance-1
python3 -m src.scripts.Convertor change-time-ms rnaseq-performance-2.csv , - 31622400000 rnaseq-performance-2
python3 -m src.scripts.Convertor change-time-ms rnaseq-performance-3.csv , - 31622400000 rnaseq-performance-3

python3 -m src.scripts.Convertor change-time-ms rnaseq-powersave-1.csv , - 31622400000 rnaseq-powersave-1
python3 -m src.scripts.Convertor change-time-ms rnaseq-powersave-2.csv , - 31622400000 rnaseq-powersave-2
python3 -m src.scripts.Convertor change-time-ms rnaseq-powersave-3.csv , - 31622400000 rnaseq-powersave-3


python3 -m src.scripts.Convertor change-time-ms chipseq-performance-1.csv , - 31622400000 chipseq-performance-1
python3 -m src.scripts.Convertor change-time-ms chipseq-performance-2.csv , - 31622400000 chipseq-performance-2
python3 -m src.scripts.Convertor change-time-ms chipseq-performance-3.csv , - 31622400000 chipseq-performance-3

python3 -m src.scripts.Convertor change-time-ms chipseq-powersave-1.csv , - 31622400000 chipseq-powersave-1
python3 -m src.scripts.Convertor change-time-ms chipseq-powersave-2.csv , - 31622400000 chipseq-powersave-2
python3 -m src.scripts.Convertor change-time-ms chipseq-powersave-3.csv , - 31622400000 chipseq-powersave-3

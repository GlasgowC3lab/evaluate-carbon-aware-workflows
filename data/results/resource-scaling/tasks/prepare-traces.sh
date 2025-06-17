#!/bin/bash

months=( jan feb mar apr may jun jul aug sep oct nov dec )
month_strs=( '01' '02' '03' '04' '05' '06' '07' '08' '09' '10' '11' '12' )
start_16s=( 16 15 16 15 16 15 16 16 15 16 15 16 )
tasks=( bowtie2_build fastp fastqc trimgalore )
times=( '09-00', '11-00', '13-00', '15-00')
machines=( gpg13 gpg14 gpg15 gpg22 hu26 )
gcpc2=( 1748113763962 1748114370417 1748114964086 1748113104783 1748113321029 1748113539820 1748009512567 1748010155508 1748010820690 1748011489438 1748015360211 1748019243988 )
gcpn2=( 1748330311436 1748330991793 1748331670558 1748329430885 1748329723246 1748330014571 1748313268457 1748313999919 1748314769097 1748315529059 1748320232011 1748324738532 )
gcpn1=( 1748496816648 1748497735170 1748498665279 1748495103374 1748495664136 1748496225008 1748427801748 1748428747049 1748429712060 1748430656226 1748437740399 1748444551521 )
gpg13=( 1745700321300 1745701282712 1745702284993 1745698525250 1745699074895 1745699683720 1745678860451 1745679907546 1745680919207 1745681915466 1745687454130 1745692996388 )
gpg14=( 1745851706965 1745852727698 1745853688224 1745849746040 1745850390091 1745851055303 1745830208570 1745831254414 1745832276567 1745833269641 1745838792119 1745844307015 )
gpg15=( 1746027789982 1746028797275 1746029784908 1746025306193 1746026266450 1746027021799 1746005049547 1746006089686 1746007116492 1746008109480 1746013647185 1746019767926 )
gpg22=( 1745867691446 1745868253170 1745868816881 1745866346099 1745866770813 1745867210780 1745855363898 1745855861378 1745856355086 1745856855913 1745877776599 1745863200343 )
hu26=( 1746545562846 1746546149692 1746546744212 1746544994179 1746545182611 1746545370186 1746531829259 1746532427293 1746533030700 1746533630571 1746537421451 1746541208272 )
idx=0

# performance

for i in "${machines[@]}"
do
        # january
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-1 , 2024-01-16:09-00 ${!i[0]} $i-performance-bowtie2_build-1-jan
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-2 , 2024-01-16:09-00 ${!i[1]} $i-performance-bowtie2_build-2-jan
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-3 , 2024-01-16:09-00 ${!i[2]} $i-performance-bowtie2_build-3-jan

        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-1 , 2024-01-16:11-00 ${!i[3]} $i-performance-fastp-1-jan
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-2 , 2024-01-16:11-00 ${!i[4]} $i-performance-fastp-2-jan
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-3 , 2024-01-16:11-00 ${!i[5]} $i-performance-fastp-3-jan
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-1 , 2024-01-16:13-00 ${!i[6]} $i-performance-fastqc-1-jan
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-2 , 2024-01-16:13-00 ${!i[7]} $i-performance-fastqc-2-jan
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-3 , 2024-01-16:13-00 ${!i[8]} $i-performance-fastqc-3-jan
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-1 , 2024-01-16:15-00 ${!i[9]} $i-performance-trimgalore-1-jan
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-2 , 2024-01-16:15-00 ${!i[10]} $i-performance-trimgalore-2-jan
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-3 , 2024-01-16:15-00 ${!i[11]} $i-performance-trimgalore-3-jan

        # february
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-1 , 2024-02-15:09-00 ${!i[0]} $i-performance-bowtie2_build-1-feb
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-2 , 2024-02-15:09-00 ${!i[1]} $i-performance-bowtie2_build-2-feb
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-3 , 2024-02-15:09-00 ${!i[2]} $i-performance-bowtie2_build-3-feb

        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-1 , 2024-02-15:11-00 ${!i[3]} $i-performance-fastp-1-feb
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-2 , 2024-02-15:11-00 ${!i[4]} $i-performance-fastp-2-feb
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-3 , 2024-02-15:11-00 ${!i[5]} $i-performance-fastp-3-feb
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-1 , 2024-02-15:13-00 ${!i[6]} $i-performance-fastqc-1-feb
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-2 , 2024-02-15:13-00 ${!i[7]} $i-performance-fastqc-2-feb
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-3 , 2024-02-15:13-00 ${!i[8]} $i-performance-fastqc-3-feb
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-1 , 2024-02-15:15-00 ${!i[9]} $i-performance-trimgalore-1-feb
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-2 , 2024-02-15:15-00 ${!i[10]} $i-performance-trimgalore-2-feb
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-3 , 2024-02-15:15-00 ${!i[11]} $i-performance-trimgalore-3-feb

        # march
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-1 , 2024-03-16:09-00 ${!i[0]} $i-performance-bowtie2_build-1-mar
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-2 , 2024-03-16:09-00 ${!i[1]} $i-performance-bowtie2_build-2-mar
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-3 , 2024-03-16:09-00 ${!i[2]} $i-performance-bowtie2_build-3-mar

        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-1 , 2024-03-16:11-00 ${!i[3]} $i-performance-fastp-1-mar
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-2 , 2024-03-16:11-00 ${!i[4]} $i-performance-fastp-2-mar
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-3 , 2024-03-16:11-00 ${!i[5]} $i-performance-fastp-3-mar
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-1 , 2024-03-16:13-00 ${!i[6]} $i-performance-fastqc-1-mar
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-2 , 2024-03-16:13-00 ${!i[7]} $i-performance-fastqc-2-mar
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-3 , 2024-03-16:13-00 ${!i[8]} $i-performance-fastqc-3-mar
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-1 , 2024-03-16:15-00 ${!i[9]} $i-performance-trimgalore-1-mar
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-2 , 2024-03-16:15-00 ${!i[10]} $i-performance-trimgalore-2-mar
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-3 , 2024-03-16:15-00 ${!i[11]} $i-performance-trimgalore-3-mar

        # april
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-1 , 2024-04-15:09-00 ${!i[0]} $i-performance-bowtie2_build-1-apr
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-2 , 2024-04-15:09-00 ${!i[1]} $i-performance-bowtie2_build-2-apr
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-3 , 2024-04-15:09-00 ${!i[2]} $i-performance-bowtie2_build-3-apr

        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-1 , 2024-04-15:11-00 ${!i[3]} $i-performance-fastp-1-apr
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-2 , 2024-04-15:11-00 ${!i[4]} $i-performance-fastp-2-apr
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-3 , 2024-04-15:11-00 ${!i[5]} $i-performance-fastp-3-apr
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-1 , 2024-04-15:13-00 ${!i[6]} $i-performance-fastqc-1-apr
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-2 , 2024-04-15:13-00 ${!i[7]} $i-performance-fastqc-2-apr
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-3 , 2024-04-15:13-00 ${!i[8]} $i-performance-fastqc-3-apr
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-1 , 2024-04-15:15-00 ${!i[9]} $i-performance-trimgalore-1-apr
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-2 , 2024-04-15:15-00 ${!i[10]} $i-performance-trimgalore-2-apr
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-3 , 2024-04-15:15-00 ${!i[11]} $i-performance-trimgalore-3-apr

        # may
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-1 , 2024-05-16:09-00 ${!i[0]} $i-performance-bowtie2_build-1-may
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-2 , 2024-05-16:09-00 ${!i[1]} $i-performance-bowtie2_build-2-may
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-3 , 2024-05-16:09-00 ${!i[2]} $i-performance-bowtie2_build-3-may

        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-1 , 2024-05-16:11-00 ${!i[3]} $i-performance-fastp-1-may
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-2 , 2024-05-16:11-00 ${!i[4]} $i-performance-fastp-2-may
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-3 , 2024-05-16:11-00 ${!i[5]} $i-performance-fastp-3-may
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-1 , 2024-05-16:13-00 ${!i[6]} $i-performance-fastqc-1-may
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-2 , 2024-05-16:13-00 ${!i[7]} $i-performance-fastqc-2-may
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-3 , 2024-05-16:13-00 ${!i[8]} $i-performance-fastqc-3-may
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-1 , 2024-05-16:15-00 ${!i[9]} $i-performance-trimgalore-1-may
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-2 , 2024-05-16:15-00 ${!i[10]} $i-performance-trimgalore-2-may
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-3 , 2024-05-16:15-00 ${!i[11]} $i-performance-trimgalore-3-may

        # june
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-1 , 2024-06-15:09-00 ${!i[0]} $i-performance-bowtie2_build-1-jun
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-2 , 2024-06-15:09-00 ${!i[1]} $i-performance-bowtie2_build-2-jun
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-3 , 2024-06-15:09-00 ${!i[2]} $i-performance-bowtie2_build-3-jun

        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-1 , 2024-06-15:11-00 ${!i[3]} $i-performance-fastp-1-jun
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-2 , 2024-06-15:11-00 ${!i[4]} $i-performance-fastp-2-jun
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-3 , 2024-06-15:11-00 ${!i[5]} $i-performance-fastp-3-jun
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-1 , 2024-06-15:13-00 ${!i[6]} $i-performance-fastqc-1-jun
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-2 , 2024-06-15:13-00 ${!i[7]} $i-performance-fastqc-2-jun
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-3 , 2024-06-15:13-00 ${!i[8]} $i-performance-fastqc-3-jun
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-1 , 2024-06-15:15-00 ${!i[9]} $i-performance-trimgalore-1-jun
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-2 , 2024-06-15:15-00 ${!i[10]} $i-performance-trimgalore-2-jun
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-3 , 2024-06-15:15-00 ${!i[11]} $i-performance-trimgalore-3-jun

        # july
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-1 , 2024-07-16:09-00 ${!i[0]} $i-performance-bowtie2_build-1-jul
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-2 , 2024-07-16:09-00 ${!i[1]} $i-performance-bowtie2_build-2-jul
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-3 , 2024-07-16:09-00 ${!i[2]} $i-performance-bowtie2_build-3-jul

        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-1 , 2024-07-16:11-00 ${!i[3]} $i-performance-fastp-1-jul
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-2 , 2024-07-16:11-00 ${!i[4]} $i-performance-fastp-2-jul
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-3 , 2024-07-16:11-00 ${!i[5]} $i-performance-fastp-3-jul
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-1 , 2024-07-16:13-00 ${!i[6]} $i-performance-fastqc-1-jul
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-2 , 2024-07-16:13-00 ${!i[7]} $i-performance-fastqc-2-jul
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-3 , 2024-07-16:13-00 ${!i[8]} $i-performance-fastqc-3-jul
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-1 , 2024-07-16:15-00 ${!i[9]} $i-performance-trimgalore-1-jul
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-2 , 2024-07-16:15-00 ${!i[10]} $i-performance-trimgalore-2-jul
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-3 , 2024-07-16:15-00 ${!i[11]} $i-performance-trimgalore-3-jul

        # august
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-1 , 2024-08-16:09-00 ${!i[0]} $i-performance-bowtie2_build-1-aug
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-2 , 2024-08-16:09-00 ${!i[1]} $i-performance-bowtie2_build-2-aug
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-3 , 2024-08-16:09-00 ${!i[2]} $i-performance-bowtie2_build-3-aug

        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-1 , 2024-08-16:11-00 ${!i[3]} $i-performance-fastp-1-aug
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-2 , 2024-08-16:11-00 ${!i[4]} $i-performance-fastp-2-aug
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-3 , 2024-08-16:11-00 ${!i[5]} $i-performance-fastp-3-aug
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-1 , 2024-08-16:13-00 ${!i[6]} $i-performance-fastqc-1-aug
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-2 , 2024-08-16:13-00 ${!i[7]} $i-performance-fastqc-2-aug
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-3 , 2024-08-16:13-00 ${!i[8]} $i-performance-fastqc-3-aug
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-1 , 2024-08-16:15-00 ${!i[9]} $i-performance-trimgalore-1-aug
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-2 , 2024-08-16:15-00 ${!i[10]} $i-performance-trimgalore-2-aug
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-3 , 2024-08-16:15-00 ${!i[11]} $i-performance-trimgalore-3-aug

        # september
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-1 , 2024-09-15:09-00 ${!i[0]} $i-performance-bowtie2_build-1-sep
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-2 , 2024-09-15:09-00 ${!i[1]} $i-performance-bowtie2_build-2-sep
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-3 , 2024-09-15:09-00 ${!i[2]} $i-performance-bowtie2_build-3-sep

        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-1 , 2024-09-15:11-00 ${!i[3]} $i-performance-fastp-1-sep
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-2 , 2024-09-15:11-00 ${!i[4]} $i-performance-fastp-2-sep
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-3 , 2024-09-15:11-00 ${!i[5]} $i-performance-fastp-3-sep
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-1 , 2024-09-15:13-00 ${!i[6]} $i-performance-fastqc-1-sep
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-2 , 2024-09-15:13-00 ${!i[7]} $i-performance-fastqc-2-sep
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-3 , 2024-09-15:13-00 ${!i[8]} $i-performance-fastqc-3-sep
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-1 , 2024-09-15:15-00 ${!i[9]} $i-performance-trimgalore-1-sep
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-2 , 2024-09-15:15-00 ${!i[10]} $i-performance-trimgalore-2-sep
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-3 , 2024-09-15:15-00 ${!i[11]} $i-performance-trimgalore-3-sep

        # october
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-1 , 2024-10-16:09-00 ${!i[0]} $i-performance-bowtie2_build-1-oct
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-2 , 2024-10-16:09-00 ${!i[1]} $i-performance-bowtie2_build-2-oct
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-3 , 2024-10-16:09-00 ${!i[2]} $i-performance-bowtie2_build-3-oct

        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-1 , 2024-10-16:11-00 ${!i[3]} $i-performance-fastp-1-oct
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-2 , 2024-10-16:11-00 ${!i[4]} $i-performance-fastp-2-oct
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-3 , 2024-10-16:11-00 ${!i[5]} $i-performance-fastp-3-oct
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-1 , 2024-10-16:13-00 ${!i[6]} $i-performance-fastqc-1-oct
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-2 , 2024-10-16:13-00 ${!i[7]} $i-performance-fastqc-2-oct
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-3 , 2024-10-16:13-00 ${!i[8]} $i-performance-fastqc-3-oct
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-1 , 2024-10-16:15-00 ${!i[9]} $i-performance-trimgalore-1-oct
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-2 , 2024-10-16:15-00 ${!i[10]} $i-performance-trimgalore-2-oct
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-3 , 2024-10-16:15-00 ${!i[11]} $i-performance-trimgalore-3-oct

        # november
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-1 , 2024-11-15:09-00 ${!i[0]} $i-performance-bowtie2_build-1-nov
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-2 , 2024-11-15:09-00 ${!i[1]} $i-performance-bowtie2_build-2-nov
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-3 , 2024-11-15:09-00 ${!i[2]} $i-performance-bowtie2_build-3-nov

        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-1 , 2024-11-15:11-00 ${!i[3]} $i-performance-fastp-1-nov
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-2 , 2024-11-15:11-00 ${!i[4]} $i-performance-fastp-2-nov
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-3 , 2024-11-15:11-00 ${!i[5]} $i-performance-fastp-3-nov
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-1 , 2024-11-15:13-00 ${!i[6]} $i-performance-fastqc-1-nov
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-2 , 2024-11-15:13-00 ${!i[7]} $i-performance-fastqc-2-nov
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-3 , 2024-11-15:13-00 ${!i[8]} $i-performance-fastqc-3-nov
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-1 , 2024-11-15:15-00 ${!i[9]} $i-performance-trimgalore-1-nov
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-2 , 2024-11-15:15-00 ${!i[10]} $i-performance-trimgalore-2-nov
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-3 , 2024-11-15:15-00 ${!i[11]} $i-performance-trimgalore-3-nov

        # december
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-1 , 2024-12-16:09-00 ${!i[0]} $i-performance-bowtie2_build-1-dec
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-2 , 2024-12-16:09-00 ${!i[1]} $i-performance-bowtie2_build-2-dec
        python3 -m src.scripts.Convertor change-start-ms $i-performance-bowtie2_build-3 , 2024-12-16:09-00 ${!i[2]} $i-performance-bowtie2_build-3-dec

        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-1 , 2024-12-16:11-00 ${!i[3]} $i-performance-fastp-1-dec
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-2 , 2024-12-16:11-00 ${!i[4]} $i-performance-fastp-2-dec
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastp-3 , 2024-12-16:11-00 ${!i[5]} $i-performance-fastp-3-dec
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-1 , 2024-12-16:13-00 ${!i[6]} $i-performance-fastqc-1-dec
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-2 , 2024-12-16:13-00 ${!i[7]} $i-performance-fastqc-2-dec
        python3 -m src.scripts.Convertor change-start-ms $i-performance-fastqc-3 , 2024-12-16:13-00 ${!i[8]} $i-performance-fastqc-3-dec
        
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-1 , 2024-12-16:15-00 ${!i[9]} $i-performance-trimgalore-1-dec
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-2 , 2024-12-16:15-00 ${!i[10]} $i-performance-trimgalore-2-dec
        python3 -m src.scripts.Convertor change-start-ms $i-performance-trimgalore-3 , 2024-12-16:15-00 ${!i[11]} $i-performance-trimgalore-3-dec
    done
done


# powersave

for i in "${machines[@]}"
do
        # january
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-1 , 2024-01-16:09-00 ${!i[0]} $i-powersave-bowtie2_build-1-jan
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-2 , 2024-01-16:09-00 ${!i[1]} $i-powersave-bowtie2_build-2-jan
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-3 , 2024-01-16:09-00 ${!i[2]} $i-powersave-bowtie2_build-3-jan

        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-1 , 2024-01-16:11-00 ${!i[3]} $i-powersave-fastp-1-jan
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-2 , 2024-01-16:11-00 ${!i[4]} $i-powersave-fastp-2-jan
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-3 , 2024-01-16:11-00 ${!i[5]} $i-powersave-fastp-3-jan
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-1 , 2024-01-16:13-00 ${!i[6]} $i-powersave-fastqc-1-jan
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-2 , 2024-01-16:13-00 ${!i[7]} $i-powersave-fastqc-2-jan
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-3 , 2024-01-16:13-00 ${!i[8]} $i-powersave-fastqc-3-jan
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-1 , 2024-01-16:15-00 ${!i[9]} $i-powersave-trimgalore-1-jan
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-2 , 2024-01-16:15-00 ${!i[10]} $i-powersave-trimgalore-2-jan
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-3 , 2024-01-16:15-00 ${!i[11]} $i-powersave-trimgalore-3-jan

        # february
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-1 , 2024-02-15:09-00 ${!i[0]} $i-powersave-bowtie2_build-1-feb
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-2 , 2024-02-15:09-00 ${!i[1]} $i-powersave-bowtie2_build-2-feb
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-3 , 2024-02-15:09-00 ${!i[2]} $i-powersave-bowtie2_build-3-feb

        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-1 , 2024-02-15:11-00 ${!i[3]} $i-powersave-fastp-1-feb
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-2 , 2024-02-15:11-00 ${!i[4]} $i-powersave-fastp-2-feb
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-3 , 2024-02-15:11-00 ${!i[5]} $i-powersave-fastp-3-feb
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-1 , 2024-02-15:13-00 ${!i[6]} $i-powersave-fastqc-1-feb
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-2 , 2024-02-15:13-00 ${!i[7]} $i-powersave-fastqc-2-feb
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-3 , 2024-02-15:13-00 ${!i[8]} $i-powersave-fastqc-3-feb
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-1 , 2024-02-15:15-00 ${!i[9]} $i-powersave-trimgalore-1-feb
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-2 , 2024-02-15:15-00 ${!i[10]} $i-powersave-trimgalore-2-feb
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-3 , 2024-02-15:15-00 ${!i[11]} $i-powersave-trimgalore-3-feb

        # march
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-1 , 2024-03-16:09-00 ${!i[0]} $i-powersave-bowtie2_build-1-mar
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-2 , 2024-03-16:09-00 ${!i[1]} $i-powersave-bowtie2_build-2-mar
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-3 , 2024-03-16:09-00 ${!i[2]} $i-powersave-bowtie2_build-3-mar

        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-1 , 2024-03-16:11-00 ${!i[3]} $i-powersave-fastp-1-mar
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-2 , 2024-03-16:11-00 ${!i[4]} $i-powersave-fastp-2-mar
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-3 , 2024-03-16:11-00 ${!i[5]} $i-powersave-fastp-3-mar
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-1 , 2024-03-16:13-00 ${!i[6]} $i-powersave-fastqc-1-mar
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-2 , 2024-03-16:13-00 ${!i[7]} $i-powersave-fastqc-2-mar
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-3 , 2024-03-16:13-00 ${!i[8]} $i-powersave-fastqc-3-mar
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-1 , 2024-03-16:15-00 ${!i[9]} $i-powersave-trimgalore-1-mar
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-2 , 2024-03-16:15-00 ${!i[10]} $i-powersave-trimgalore-2-mar
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-3 , 2024-03-16:15-00 ${!i[11]} $i-powersave-trimgalore-3-mar

        # april
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-1 , 2024-04-15:09-00 ${!i[0]} $i-powersave-bowtie2_build-1-apr
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-2 , 2024-04-15:09-00 ${!i[1]} $i-powersave-bowtie2_build-2-apr
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-3 , 2024-04-15:09-00 ${!i[2]} $i-powersave-bowtie2_build-3-apr

        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-1 , 2024-04-15:11-00 ${!i[3]} $i-powersave-fastp-1-apr
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-2 , 2024-04-15:11-00 ${!i[4]} $i-powersave-fastp-2-apr
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-3 , 2024-04-15:11-00 ${!i[5]} $i-powersave-fastp-3-apr
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-1 , 2024-04-15:13-00 ${!i[6]} $i-powersave-fastqc-1-apr
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-2 , 2024-04-15:13-00 ${!i[7]} $i-powersave-fastqc-2-apr
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-3 , 2024-04-15:13-00 ${!i[8]} $i-powersave-fastqc-3-apr
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-1 , 2024-04-15:15-00 ${!i[9]} $i-powersave-trimgalore-1-apr
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-2 , 2024-04-15:15-00 ${!i[10]} $i-powersave-trimgalore-2-apr
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-3 , 2024-04-15:15-00 ${!i[11]} $i-powersave-trimgalore-3-apr

        # may
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-1 , 2024-05-16:09-00 ${!i[0]} $i-powersave-bowtie2_build-1-may
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-2 , 2024-05-16:09-00 ${!i[1]} $i-powersave-bowtie2_build-2-may
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-3 , 2024-05-16:09-00 ${!i[2]} $i-powersave-bowtie2_build-3-may

        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-1 , 2024-05-16:11-00 ${!i[3]} $i-powersave-fastp-1-may
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-2 , 2024-05-16:11-00 ${!i[4]} $i-powersave-fastp-2-may
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-3 , 2024-05-16:11-00 ${!i[5]} $i-powersave-fastp-3-may
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-1 , 2024-05-16:13-00 ${!i[6]} $i-powersave-fastqc-1-may
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-2 , 2024-05-16:13-00 ${!i[7]} $i-powersave-fastqc-2-may
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-3 , 2024-05-16:13-00 ${!i[8]} $i-powersave-fastqc-3-may
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-1 , 2024-05-16:15-00 ${!i[9]} $i-powersave-trimgalore-1-may
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-2 , 2024-05-16:15-00 ${!i[10]} $i-powersave-trimgalore-2-may
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-3 , 2024-05-16:15-00 ${!i[11]} $i-powersave-trimgalore-3-may

        # june
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-1 , 2024-06-15:09-00 ${!i[0]} $i-powersave-bowtie2_build-1-jun
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-2 , 2024-06-15:09-00 ${!i[1]} $i-powersave-bowtie2_build-2-jun
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-3 , 2024-06-15:09-00 ${!i[2]} $i-powersave-bowtie2_build-3-jun

        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-1 , 2024-06-15:11-00 ${!i[3]} $i-powersave-fastp-1-jun
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-2 , 2024-06-15:11-00 ${!i[4]} $i-powersave-fastp-2-jun
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-3 , 2024-06-15:11-00 ${!i[5]} $i-powersave-fastp-3-jun
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-1 , 2024-06-15:13-00 ${!i[6]} $i-powersave-fastqc-1-jun
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-2 , 2024-06-15:13-00 ${!i[7]} $i-powersave-fastqc-2-jun
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-3 , 2024-06-15:13-00 ${!i[8]} $i-powersave-fastqc-3-jun
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-1 , 2024-06-15:15-00 ${!i[9]} $i-powersave-trimgalore-1-jun
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-2 , 2024-06-15:15-00 ${!i[10]} $i-powersave-trimgalore-2-jun
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-3 , 2024-06-15:15-00 ${!i[11]} $i-powersave-trimgalore-3-jun

        # july
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-1 , 2024-07-16:09-00 ${!i[0]} $i-powersave-bowtie2_build-1-jul
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-2 , 2024-07-16:09-00 ${!i[1]} $i-powersave-bowtie2_build-2-jul
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-3 , 2024-07-16:09-00 ${!i[2]} $i-powersave-bowtie2_build-3-jul

        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-1 , 2024-07-16:11-00 ${!i[3]} $i-powersave-fastp-1-jul
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-2 , 2024-07-16:11-00 ${!i[4]} $i-powersave-fastp-2-jul
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-3 , 2024-07-16:11-00 ${!i[5]} $i-powersave-fastp-3-jul
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-1 , 2024-07-16:13-00 ${!i[6]} $i-powersave-fastqc-1-jul
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-2 , 2024-07-16:13-00 ${!i[7]} $i-powersave-fastqc-2-jul
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-3 , 2024-07-16:13-00 ${!i[8]} $i-powersave-fastqc-3-jul
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-1 , 2024-07-16:15-00 ${!i[9]} $i-powersave-trimgalore-1-jul
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-2 , 2024-07-16:15-00 ${!i[10]} $i-powersave-trimgalore-2-jul
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-3 , 2024-07-16:15-00 ${!i[11]} $i-powersave-trimgalore-3-jul

        # august
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-1 , 2024-08-16:09-00 ${!i[0]} $i-powersave-bowtie2_build-1-aug
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-2 , 2024-08-16:09-00 ${!i[1]} $i-powersave-bowtie2_build-2-aug
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-3 , 2024-08-16:09-00 ${!i[2]} $i-powersave-bowtie2_build-3-aug

        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-1 , 2024-08-16:11-00 ${!i[3]} $i-powersave-fastp-1-aug
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-2 , 2024-08-16:11-00 ${!i[4]} $i-powersave-fastp-2-aug
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-3 , 2024-08-16:11-00 ${!i[5]} $i-powersave-fastp-3-aug
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-1 , 2024-08-16:13-00 ${!i[6]} $i-powersave-fastqc-1-aug
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-2 , 2024-08-16:13-00 ${!i[7]} $i-powersave-fastqc-2-aug
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-3 , 2024-08-16:13-00 ${!i[8]} $i-powersave-fastqc-3-aug
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-1 , 2024-08-16:15-00 ${!i[9]} $i-powersave-trimgalore-1-aug
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-2 , 2024-08-16:15-00 ${!i[10]} $i-powersave-trimgalore-2-aug
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-3 , 2024-08-16:15-00 ${!i[11]} $i-powersave-trimgalore-3-aug

        # september
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-1 , 2024-09-15:09-00 ${!i[0]} $i-powersave-bowtie2_build-1-sep
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-2 , 2024-09-15:09-00 ${!i[1]} $i-powersave-bowtie2_build-2-sep
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-3 , 2024-09-15:09-00 ${!i[2]} $i-powersave-bowtie2_build-3-sep

        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-1 , 2024-09-15:11-00 ${!i[3]} $i-powersave-fastp-1-sep
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-2 , 2024-09-15:11-00 ${!i[4]} $i-powersave-fastp-2-sep
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-3 , 2024-09-15:11-00 ${!i[5]} $i-powersave-fastp-3-sep
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-1 , 2024-09-15:13-00 ${!i[6]} $i-powersave-fastqc-1-sep
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-2 , 2024-09-15:13-00 ${!i[7]} $i-powersave-fastqc-2-sep
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-3 , 2024-09-15:13-00 ${!i[8]} $i-powersave-fastqc-3-sep
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-1 , 2024-09-15:15-00 ${!i[9]} $i-powersave-trimgalore-1-sep
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-2 , 2024-09-15:15-00 ${!i[10]} $i-powersave-trimgalore-2-sep
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-3 , 2024-09-15:15-00 ${!i[11]} $i-powersave-trimgalore-3-sep

        # october
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-1 , 2024-10-16:09-00 ${!i[0]} $i-powersave-bowtie2_build-1-oct
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-2 , 2024-10-16:09-00 ${!i[1]} $i-powersave-bowtie2_build-2-oct
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-3 , 2024-10-16:09-00 ${!i[2]} $i-powersave-bowtie2_build-3-oct

        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-1 , 2024-10-16:11-00 ${!i[3]} $i-powersave-fastp-1-oct
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-2 , 2024-10-16:11-00 ${!i[4]} $i-powersave-fastp-2-oct
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-3 , 2024-10-16:11-00 ${!i[5]} $i-powersave-fastp-3-oct
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-1 , 2024-10-16:13-00 ${!i[6]} $i-powersave-fastqc-1-oct
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-2 , 2024-10-16:13-00 ${!i[7]} $i-powersave-fastqc-2-oct
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-3 , 2024-10-16:13-00 ${!i[8]} $i-powersave-fastqc-3-oct
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-1 , 2024-10-16:15-00 ${!i[9]} $i-powersave-trimgalore-1-oct
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-2 , 2024-10-16:15-00 ${!i[10]} $i-powersave-trimgalore-2-oct
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-3 , 2024-10-16:15-00 ${!i[11]} $i-powersave-trimgalore-3-oct

        # november
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-1 , 2024-11-15:09-00 ${!i[0]} $i-powersave-bowtie2_build-1-nov
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-2 , 2024-11-15:09-00 ${!i[1]} $i-powersave-bowtie2_build-2-nov
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-3 , 2024-11-15:09-00 ${!i[2]} $i-powersave-bowtie2_build-3-nov

        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-1 , 2024-11-15:11-00 ${!i[3]} $i-powersave-fastp-1-nov
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-2 , 2024-11-15:11-00 ${!i[4]} $i-powersave-fastp-2-nov
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-3 , 2024-11-15:11-00 ${!i[5]} $i-powersave-fastp-3-nov
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-1 , 2024-11-15:13-00 ${!i[6]} $i-powersave-fastqc-1-nov
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-2 , 2024-11-15:13-00 ${!i[7]} $i-powersave-fastqc-2-nov
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-3 , 2024-11-15:13-00 ${!i[8]} $i-powersave-fastqc-3-nov
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-1 , 2024-11-15:15-00 ${!i[9]} $i-powersave-trimgalore-1-nov
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-2 , 2024-11-15:15-00 ${!i[10]} $i-powersave-trimgalore-2-nov
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-3 , 2024-11-15:15-00 ${!i[11]} $i-powersave-trimgalore-3-nov

        # december
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-1 , 2024-12-16:09-00 ${!i[0]} $i-powersave-bowtie2_build-1-dec
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-2 , 2024-12-16:09-00 ${!i[1]} $i-powersave-bowtie2_build-2-dec
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-bowtie2_build-3 , 2024-12-16:09-00 ${!i[2]} $i-powersave-bowtie2_build-3-dec

        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-1 , 2024-12-16:11-00 ${!i[3]} $i-powersave-fastp-1-dec
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-2 , 2024-12-16:11-00 ${!i[4]} $i-powersave-fastp-2-dec
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastp-3 , 2024-12-16:11-00 ${!i[5]} $i-powersave-fastp-3-dec
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-1 , 2024-12-16:13-00 ${!i[6]} $i-powersave-fastqc-1-dec
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-2 , 2024-12-16:13-00 ${!i[7]} $i-powersave-fastqc-2-dec
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-fastqc-3 , 2024-12-16:13-00 ${!i[8]} $i-powersave-fastqc-3-dec
        
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-1 , 2024-12-16:15-00 ${!i[9]} $i-powersave-trimgalore-1-dec
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-2 , 2024-12-16:15-00 ${!i[10]} $i-powersave-trimgalore-2-dec
        python3 -m src.scripts.Convertor change-start-ms $i-powersave-trimgalore-3 , 2024-12-16:15-00 ${!i[11]} $i-powersave-trimgalore-3-dec
    done
done


# Move Files to Folders
mkdir data/trace/shifted 
mv data/trace/*jan*csv data/trace/shifted
mv data/trace/*feb*csv data/trace/shifted
mv data/trace/*mar*csv data/trace/shifted
mv data/trace/*apr*csv data/trace/shifted
mv data/trace/*may*csv data/trace/shifted
mv data/trace/*jun*csv data/trace/shifted
mv data/trace/*jul*csv data/trace/shifted
mv data/trace/*aug*csv data/trace/shifted
mv data/trace/*sep*csv data/trace/shifted
mv data/trace/*oct*csv data/trace/shifted
mv data/trace/*nov*csv data/trace/shifted
mv data/trace/*dec*csv data/trace/shifted

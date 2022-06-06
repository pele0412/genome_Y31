#!/usr/bin/bash

p1=/home/pele/analysis/genome_assembly/raw_data/Y31/Hic/31_hic_raw_R1.fastq.gz
p2=/home/pele/analysis/genome_assembly/raw_data/Y31/Hic/31_hic_raw_R2.fastq.gz
p3=31_hic_clean_R1.fastq.gz
p4=31_hic_clean_R2.fastq.gz

fastp -i $p1 -I $p2 \
    -o $p3 -O $p4 \
    -w 16 -h Y31.hic.html -j Y31.hic.json \
    -c -l 80 -5 -3 -W 4 -M 20 --adapter_fasta adapter.fasta \
    -f 13 -F 13 -t 3 -T 3 \
    -q 20 -u 40

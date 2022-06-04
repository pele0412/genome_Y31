#!/usr/bin/bash

fastp -i 31_raw_R1.fastq.gz -I 31_raw_R2.fastq.gz \
    -o 31_filter_R1.fastq.gz -O 31_filter_R2.fastq.gz \
    -w 16 -h Y31.html -j Y31.json \
    -c -l 80 -5 -3 -W 4 -M 20 --adapter_fasta adapter.fasta \
    -f 13 -F 13 -t 3 -T 3 \
    -q 20 -u 40

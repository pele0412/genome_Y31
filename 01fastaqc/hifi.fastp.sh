#!/usr/bin/bash

fastp -i /database1/genome_assembly/raw_data/Y31/hifi/Y31.hifi.raw.fastq.gz \
    -o Y31.hifi.clean.fastq.gz \
    -w 16 -h Y31.hifi.html -j Y31.hifi.json \
    -c --adapter_fasta adapter.fasta \
    -f 10 -t 10

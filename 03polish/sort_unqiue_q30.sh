#!/bin/bash

p1=~/analysis/genome_assembly/01fastaqc/NGS/31_NGS_clean_R1.fastq.gz
p2=~/analysis/genome_assembly/01fastaqc/NGS/31_NGS_clean_R2.fastq.gz

for index in `cat fasta.list`
    do 
    bwa mem -t 100 ${index} ${p1} ${p2} | ~/biotools/samtools-1.9/samtools sort -@ 100 -O bam -o ${index}".sort.bam";
    sambamba view -t 100 -h -f bam -F "not (unmapped or secondary_alignment) and not ([XA] != null or [SA] != null) and (mapping_quality >= 30)" ${index}".sort.bam" -o ${index}".sort.uniqe_q30.bam";
    rm ${index}".sort.bam";     
    done

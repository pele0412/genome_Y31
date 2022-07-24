#!/bin/bash

for index in `cat fasta.list`
    do
    java -Xms400G -Xmx700G -jar ~/biotools/pilon/pilon-1.23.jar --genome ${index} \
    --frags ${index}".sort.uniqe_q30.bam" --fix snps,indels --output ${index}".it1";
    bwa index ${index}".it1.fasta";
    done

nohup java -Djava.io.tmpdir=tmp -Xmx40g -jar ~/biotools/picard/picard.jar MarkDuplicates INPUT=others_contig.fasta.sort.uniqe_q30.bam OUTPUT=others_contig.fasta.sort.uniqe_q30.rmdup.bam METRICS_FILE=others_contig.fasta.rmdup.metric CREATE_INDEX=true REMOVE_DUPLICATES=true 2> others_contig.fasta.rmdup.log &
nohup java -Djava.io.tmpdir=tmp -Xmx40g -jar ~/biotools/picard/picard.jar MarkDuplicates INPUT=others_contig.fasta.sort.uniqe_q30.bam OUTPUT=others_contig.fasta.sort.uniqe_q30.rmdup.bam METRICS_FILE=others_contig.fasta.rmdup.metric CREATE_INDEX=true REMOVE_DUPLICATES=true 2> others_contig.fasta.rmdup.log &
nohup java -jar -Xms400G -Xmx700G ~/biotools/pilon/pilon-1.23.jar --genome others_contig.fasta --frags others_contig.fasta.sort.uniqe_q30.mkdup.bam --fix snps,indels --output others_contig.mkdup.fasta --vcf 2> others_contig.mkdup.log &

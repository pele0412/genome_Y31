nohup java -Djava.io.tmpdir=tmp -Xmx40g -jar ~/biotools/picard/picard.jar MarkDuplicates INPUT=others_contig.fasta.sort.uniqe_q30.bam OUTPUT=others_contig.fasta.sort.uniqe_q30.mark.bam METRICS_FILE=others_contig.fasta.metric CREATE_INDEX=true REMOVE_DUPLICATES=true &
nohup java -Djava.io.tmpdir=tmp -Xmx40g -jar ~/biotools/picard/picard.jar MarkDuplicates INPUT=others_contig.fasta.sort.uniqe_q30.bam OUTPUT=t1.bam METRICS_FILE=t1.metric CREATE_INDEX=ture 2> t1.log &

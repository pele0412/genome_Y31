hifiasm -o Y31.hic.asm -t 50 --h1 ~/analysis/genome_assembly/01fastaqc/hic/31_hic_clean_R1.fastq.gz --h2 ~/analysis/genome_assembly/01fastaqc/hic/31_hic_clean_R2.fastq.gz ~/analysis/genome_assembly/01fastaqc/hifi/Y31.hifi.clean.fastq.gz
awk '/^S/{print ">"$2;print $3}' Y31.hic.asm.hic.p_ctg.gfa > Y31.hifi.hic.fa

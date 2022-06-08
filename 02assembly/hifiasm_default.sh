hifiasm -o Y31.asm -t 50 ~/analysis/genome_assembly/01fastaqc/hifi/Y31.hifi.clean.fastq.gz
nohup hifiasm -primary -o Y31.asm -t 50 ~/analysis/genome_assembly/01fastaqc/hifi/Y31.hifi.clean.fastq.gz 2> Y31.log &
awk '/^S/{print ">"$2;print $3}' Y31.asm.bp.p_ctg.gfa > Y31.hifi.fa

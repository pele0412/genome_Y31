hifiasm -o Y31.asm -t 50 ~/analysis/genome_assembly/01fastaqc/hifi/Y31.hifi.clean.fastq.gz
nohup hifiasm -primary -o Y31.asm -t 50 ~/analysis/genome_assembly/01fastaqc/hifi/Y31.hifi.clean.fastq.gz 2> Y31.log &

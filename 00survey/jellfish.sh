nohup jellyfish count -m 21 -s 4G -C -t 10 -o 21mer_out <(zcat Y31.filter_1.fq.gz) <(zcat Y31.filter_2.fq.gz) &
nohup jellyfish stats 21mer_out > 21-k-mer.stats &
nohup jellyfish histo -t 100 -o 21-mer.hist 21mer_out &

nohup BuildDatabase -name Y31.it3 -engine ncbi Y31.it3.fasta &
nohup RepeatModeler -database Y31.it3 -engine ncbi -pa 16 &> Y31.it3.out &

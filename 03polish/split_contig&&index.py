#!/usr/bin/python

import sys, datetime, os
from collections import defaultdict

genome_file = sys.argv[1]

#get list of contig

os.system("grep '>' %s | awk -F '>' '{print $2}' > contig.list " %genome_file)

#hash of genome file
genome_hash = defaultdict(list)

with open(genome_file) as fd_genome:
    for line in fd_genome:
        if line.startswith('>'):
            chrom = line.strip()[1:]
            genome_hash[chrom] = [] 
        else:
            seq_eachline = line.strip()
            genome_hash[chrom].append(seq_eachline)


others_contig_fasta = open('others_contig.fasta', mode='w+')
with open('contig.list') as fd:
    for line in fd:
        contig = line.strip() 
        ID = '>' + contig 
        contig_seq = ''.join(genome_hash[contig])
        if len(contig_seq) > 50000000:
            contig_fasta = open('%s.fasta'%contig, mode='w')
            contig_fasta.write(ID + '\n' + contig_seq)
            contig_fasta.close()
        else:
            others_contig_fasta.write(ID + '\n' + contig_seq + '\n')
others_contig_fasta.close()


#get list of fasta file
os.system("ls *.fasta > fasta.list")

with open('fasta.list') as fd:
    for line in fd:
        fasta = line.strip()
        os.system("bwa index %s" %fasta)

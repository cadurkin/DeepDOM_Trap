#!/~/anaconda3/bin/python3
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import statistics
import numpy as np

##spit out some statistics about a trinity assembly, run this from within the same directory as the Trinity.fasta file##

count = 0
fasta = open('Trinity.fasta')

for line in fasta:
    if '>' in line:
        count = count +1
        

print('Number of contigs = ' + count)

seq=''
seq_len=None
seq_lengths = []
fasta = open('Trinity.fasta')
for line in fasta:
    line=line.strip()
    if '>' in line:
        seq_lengths.append(seq_len)
        seq=''
    else:
        seq=seq + line
        seq_len=len(seq)

seq_lengths = seq_lengths[1:]

seq_median = statistics.median(seq_lengths)
seq_max = max(seq_lengths)
seq_min = min(seq_lengths)

plt.hist(seq_lengths,bins=100)
plt.yscale('log',nonposy='clip')
plt.ylabel('Number of Contigs')
plt.xlabel('Contig length')
plt.savefig('/home/cdurkin/cdurkin_public/contig_length_histogram.png')

print('Median contig length = ' + str(seq_median))
print('Mean contig length = ' + str(seq_mean))
print('Maximum contig length = ' + str(seq_max))
print('Minimum contig length = ' + str(seq_min))

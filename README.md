# DeepDOM Sediment Trap Analysis

## To do by October 20th

- [ ] Re-download 0.2 um data for St 12 and 15
- [X] Wrote script for Trimmomatic 
- [ ] Run Trimmomatic on the JGI datasets: note, need to deinterleave the reads (with script). Also would be good to concatentate the rRNA and hR datasets where applicable. 
- [X] Run Trimmomatic on Columbia datasets 
- [ ] Interleave paired end data (with khmer script interleave-reads.py)
- [ ] Make symbolic link into the processing data folder (project)
- [ ] Wrote script for digi-norm
- [ ] Run digital normalization (khmer) on all data
- [ ] Write script for Trinity assembly for each individual sample (consider pooling things...?) 
- [ ] Run a test assembly with Trinity

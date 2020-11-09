#Summarize Genome Assembly 

##Calculate Summaries of the Genome 
gunzip dmel-all-chromosome-r6.36.fasta.gz

###Total number of nucleotides
faSize dmel-all-chromosome-r6.36.fasta
#output: 143726002 bases (1152978 N's 142573024 real 142573024 upper 0 lower) in 1870 sequences in 1 files
Total size: mean 76858.8 sd 1382100.2 min 544 (211000022279089) max 32079331 (3R) median 1577
N count: mean 616.6 sd 6960.7
U count: mean 76242.3 sd 1379508.4
L count: mean 0.0 sd 0.0
%0.00 masked total, %0.00 masked real 

###Total number of Ns 
#output from faSize command provides N count 

###Total number of sequences
#output from faSize command provides sequence count, too 
gunzip dmel-all-chromosome-r6.36.fasta.gz
grep -c ">" dmel-all-chromosome-r6.36.fasta
#output: 1870 

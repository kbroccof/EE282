#File Download and File Integrity on gzipped file using a checksum for Part 2 download 

#Download the file 
minion_reads="https://hpc.oit.uci.edu/~solarese/ee282/iso1_onp_a2_1kb.fastq.gz"
wget $minion_reads
less iso1_onp_a2_1kb.fastq.gz
q 

#Name the file 
minion_reads="iso1_onp_a2_1kb.fastq.gz" 
less $minion_reads
q

#Checksum ? 
wget https://hpc.oit.uci.edu/~solarese/ee282/iso1_onp_a2_1kb.fastq.gz*
? 


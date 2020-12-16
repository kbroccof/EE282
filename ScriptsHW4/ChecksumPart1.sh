#File Download and File Integrity on gzipped file using a checksum for Part 1 download 

#Download the file 
all_Chromosomes="ftp://ftp.flybase.net/releases/current/dmel_r6.36/fasta/dmel-all-chromosome-r6.36.fasta.gz"
wget $all_Chromosomes
less dmel-all-chromosome-r6.36.fasta.gz
q 

#Name the file 
all_chromosomes="dmel-all-chromosome-r6.36.fasta.gz"
less $all_chromosomes
q 

#Checksum 
md5sum $all_chromosomes
#output: fbd2855a20c3610050ff2496dd975821  dmel-all-chromosome-r6.36.fasta.gz 
#md5sum from checksum file online: fbd2855a20c3610050ff2496dd975821  dmel-all-chromosome-r6.36.fasta.gz
#manual check, they match! 
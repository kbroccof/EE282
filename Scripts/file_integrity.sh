#Summarize Genome Assembly 
##File download and File Integrity on gzipped fast file using a checksum 

#Download the file 
all_Chromosomes="ftp://ftp.flybase.net/genomes/dmel/current/fasta/dmel-all-chromosome-r6.36.fasta.gz"\
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
#md5sum from the checksum online: fbd2855a20c3610050ff2496dd975821  dmel-all-chromosome-r6.36.fasta.gz 
#manual check, they match! 





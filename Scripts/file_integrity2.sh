#Summarize Anotation File 
##File download and File Integrity on gzipped gif using a checksum 

#Download the file 
wget ftp://ftp.flybase.net/genomes/dmel/current/gtf/*
md5sum -c md5sum.txt
#output dmel-all-r6.36.gtf.gz: OK 
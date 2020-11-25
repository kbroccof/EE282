#Unzip the file post-checksum 
gunzip dmel-all-chromosome-r6.36.fasta.gz
less dmel-all-chromosome-r6.36.fasta
q

##Partition into sequences less than or equal to 100kb:
#first option: 
bioawk -c fastx ' length($seq) <= 100000 ' dmel-all-chromosome-r6.36.fasta | head
#less verbose option with pretty column format: 
bioawk -c fastx ' length($seq) <= 100000 { print $name "\t" length($seq) } ' dmel-all-chromosome-r6.36.fasta | head | column -t
#save this output of the sequence lengths we want into its own fasta file that we can then manipulate: 
bioawk -c fastx ' length($seq) <= 100000 { print ">" $name "\n" $seq } ' dmel-all-chromosome-r6.36.fasta | head | less
#do this but without head, so you see everything and -S chops it: 
bioawk -c fastx ' length($seq) <= 100000 { print ">" $name "\n" $seq } ' dmel-all-chromosome-r6.36.fasta | less -S
#capture this partitioned genome in a file that is named after the dmelr6 less than or equal to chunk (lte): 
bioawk -c fastx \
> ' length($seq) <= 100000 { print ">" $name "\n" $seq } ' \
> dmel-all-chromosome-r6.36.fasta \ 
> > dmelr6.lte.fa
less dmelr6.lte.fa -S


##Partition into sequences greater than 100kb:

##Calculate total number of nucleotides, Ns, and sequences for less than or equal to 100kb: 
faSize 


####Calculate total number of nucleotides, Ns, and sequences for greater than 100kb:
faSize

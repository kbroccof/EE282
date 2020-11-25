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
#do what we did above but for different sizes of sequences in a fasta file greater than (gt): 
bioawk -c fastx \
> ' length($seq) > 100000 { print ">" $name "\n" $seq } ' \
> dmel-all-chromosome-r6.36.fasta \ 
> > dmelr6.gt.fa
less dmelr6.gt.fa -S

##Calculate total number of nucleotides, Ns, and sequences for less than or equal to 100kb: 
faSize dmelr6.lte.fa
#ouput
6178042 bases (662593 N's 5515449 real 5515449 upper 0 lower) in 1863 sequences in 1 files
Total size: mean 3316.2 sd 7116.2 min 544 (211000022279089) max 88768 (Unmapped_Scaffold_8_D1580_D1567) median 1567
N count: mean 355.7 sd 1700.6
U count: mean 2960.5 sd 6351.5
L count: mean 0.0 sd 0.0
%0.00 masked total, %0.00 masked real


####Calculate total number of nucleotides, Ns, and sequences for greater than 100kb:
faSize dmelr6.gt.fa
#output
137547960 bases (490385 N's 137057575 real 137057575 upper 0 lower) in 7 sequences in 1 files
Total size: mean 19649708.6 sd 12099037.5 min 1348131 (4) max 32079331 (3R) median 23542271
N count: mean 70055.0 sd 92459.2
U count: mean 19579653.6 sd 12138278.9
L count: mean 0.0 sd 0.0
%0.00 masked total, %0.00 masked real

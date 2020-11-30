#Plots of the following for dmelr6.lte.fa and for dmelr6.gt.fa: 
bioawk -c fastx \
 # code ' CONDITION { CODE } ' \
 # input file 


##dmelr6.lte.fa: 
###1. Sequence length distribution using a histogram with a log scale (shows the full range of lengths).
 


###2. Sequence GC% distribution using a histogram. 


###3. Cumulative sequence size (same as sequence length) sorted from largest to smallest sequences (use plotcdf utility which does the cumulative distribution).
bioawk -c fastx \
  ' { print length($seq) "\t" gc($seq) } ' \ 
  dmelr6.lte.fa \
| sort -k1,1rn \ 
| head 

####output:
88768	0.384609
87365	0.423236
86267	0.345138
76973	0.307238
76224	0.37584
73091	0.405495
66731	0.322249
66439	0.34844
62570	0.265782
57785	0.316916

bioawk -c fastx \
  ' { print length($seq) "\t" gc($seq) } ' \ 
  dmelr6.lte.fa \
| sort -k1,1rn \
> dmelr6.lte.lengc.txt 

plotCDF <(cut -f 1 dmelr6.lte.lengc.txt) dmelr6.lte.lengc.png \
display dmelr6.lte.lengc.png


##dmelr6.gt.fa: 
###1. Sequence length distribution using a histogram with a log scale (shows the full range of lengths).
bioawk -c fastx \
 ' { CODE } ' \  
 dmelr6.gt.fa 


###2. Sequence GC% distribution using a histogram. 


###3. Cumulative sequence size sorted from largest to smallest sequences (use plotcdf utility).
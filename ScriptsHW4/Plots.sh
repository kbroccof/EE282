#Plots of the following for dmelr6.lte.fa and for dmelr6.gt.fa: 
bioawk -c fastx \
 # code ' CONDITION { CODE } ' \
 # input file 


##dmelr6.lte.fa: 
###1. Sequence length distribution using a histogram with a log scale (shows the full range of lengths).
bioawk -c fastx \
  ' { print length($seq) "\t" } ' \ 
  dmelr6.lte.fa \
| head

#### output: 
19956	
44411	
13157	
76224	
11983	
87365	
36913	
22604	
23238	
86267

bioawk -c fastx \
  ' { print length($seq) "\t" } ' \ 
  dmelr6.lte.fa \
> dmelr6.lte.len.hist.csv

#### Histogram in R: 


###2. Sequence GC% distribution using a histogram.
bioawk -c fastx \
  ' { print gc($seq) } ' \ 
  dmelr6.lte.fa \
| head 

####output:
0.316797
0.225147
0.38717
0.37584
0.609614
0.423236
0.611573
0.397408
0.52965
0.345138

bioawk -c fastx \
  ' { print gc($seq) } ' \ 
  dmelr6.lte.fa \
> dmelr6.lte.gc.hist.csv

#### Histogram in R:


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
  ' { print length($seq) "\t" } ' \ 
  dmelr6.gt.fa \
| head

####output:
23513712	
25286936	
28110227	
32079331	
1348131	
23542271	
3667352

bioawk -c fastx \
  ' { print length($seq) "\t" } ' \ 
  dmelr6.gt.fa \
> dmelr6.gt.len.hist.csv


#### Histogram in R:
 
###2. Sequence GC% distribution using a histogram.
bioawk -c fastx \
  ' { print gc($seq) } ' \ 
  dmelr6.gt.fa \
| head

####output:
0.417816
0.425983
0.414447
0.425558
0.348053
0.423434
0.36656 

bioawk -c fastx \
  ' { print gc($seq) } ' \ 
  dmelr6.gt.fa \
> dmelr6.gt.gc.hist.csv

#### Histogram in R:


###3. Cumulative sequence size sorted from largest to smallest sequences (use plotcdf utility).
bioawk -c fastx \
  ' { print length($seq) "\t" gc($seq) } ' \ 
  dmelr6.gt.fa \
| sort -k1,1rn \ 
| head

####output:
32079331	0.425558
28110227	0.414447
25286936	0.425983
23542271	0.423434
23513712	0.417816
3667352	0.36656
1348131	0.348053

bioawk -c fastx \
  ' { print length($seq) "\t" gc($seq) } ' \ 
  dmelr6.gt.fa \
| sort -k1,1rn \
> dmelr6.gt.lengc.txt 

plotCDF <(cut -f 1 dmelr6.gt.lengc.txt) dmelr6.gt.lengc.png \
display dmelr6.gt.lengc.png


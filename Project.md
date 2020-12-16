# The effect of ontogeny on host microbiomes in the echinoderm keystone predator Pisaster ochraceus 

## Methods 

*see `Work Flow png` file for broad visualization overview of methods* 

### Importing and preparing raw sequence reads in Qiime2:

My data is already demultiplexed because I received the sequences separately for each sample with their respective barcodes from the GHTF. My data is paired-end data, because I have both reads provided per sample (Read 1 and Read 2). My data is also in the form of FASTQ files, containing both DNA sequences and also quality scores. I created a metadata file to track respective samples along with their barcodes and md5sum scores prior to beginning use of Qiime2. 

*See `DownloadQiime.sh` for script under ScriptsProject directory in project branch*

*See `MyMetaData_Pilot_Pisaster_Fall2020.csv` for metadata file in project branch*

To import the raw data sequences into Qiime2, they must be imported as Qiime2 artifacts using the correct sequence importing scheme, in this case, that would be the `Casava 1.8 paired-end demultiplexed fastq` importing scheme.

Once the raw reads are imported to Qiime2 as Qiime2 artifacts, I will reduce sequence errors and dereplicate sequences using the Denoise tools in Qiime2 and cluster the reads into Operational Taxonomic Units (OTUs). I will also normalize the data by rarefying it in Qiime2 prior to producing the `Feature Table`. 

### Feature Table in Qiime2 and downstream analyses and visualizations: 
Once the data is in the form of the Qiime2 Feature Table, which in my data’s case will be an OTU table, it will now be ready for downstream analyses and visualizations using Qiime2 and RStudio. 

### Analyzing similarity in microbiomes within and across samples:
In Qiime2, the Feature Table will be used to produce both Alpha and Beta Diversity Analyses. The Alpha Diversity will be used to analyze the diversity of OTU’s within each sample, while the Beta Diversity will be used to analyze the diversity of OTU’s across and between each sample. These analyses will be conducted using the Qiime2 `Moving Pictures` Tutorial. The artifact output from the Qiime2 Beta Diversity Analysis will be a `DistanceMatrix`, specifically a Bray-Curtis Dissimilarity Matrix, which will be exported to RStudio in order to perform a PermANOVA statistical test and to produce a Non-metric Multi-Dimensional Scaling Plot to visualize the level of similarity in microbiome diversity between samples. 

### Indicator Species Analysis: 
The Feature Table from Qiime2 will be exported to R to run an Indicator Species Analysis in order to start to understand the potential OTU’s driving the significant differences observed in the NMDS from the Beta Diversity Analysis. 

### Analyzing differential abundance measurements of sample microbiomes: 
In Qiime2, the Feature Table will be used to produce differential abundance measurements to determine relative abundances of OTU’s within samples. In Qiime2, I will visualize the differential abundance measurements using a stacked bar chart. An analysis of composition of microbiomes (ANCOM) will be performed using Qiime2 to test for significant differences in abundance measurements of OTU’s between samples. 

### Taxonomy Classification: 
In Qiime2, I will run a Taxonomic Classification to inform the Beta Diversity Analysis and the Differential Abundance Measurements used for the NMDS and stacked bar chart, respectively. To do this, I will import reference sequences and a reference database to Qiime2 and compare the query sequences (the sequences from my data) to the reference data. 

### *Work-Flow for Analyzing Amplicon Sequence Data for Microbiome Analysis using Qiime 2 and R Studio*
`P3WorkFlow.png`

## Results 

The NMDS ordination plot will likely show larvae of specific developmental stages clustering into groups based on similarities in their microbiomes. I predict that the PermANOVA statistical analysis will show that these clusters of similar-stage larvae will be significantly different from each other based on their microbiomes. I predict that the differences in clustering will be most significant between early stage larvae (bipinnaria) and late stage larvae (late stage brachiolaria). 

I predict that the Stacked Bar Charts showing differential abundance measurements will reveal that the microbiomes of the larvae are 97% dominated by bacteria, specifically by Actinobacteria, Bacteroides, Firmicutes, Proteobacteria, Spirochaeata, and Tenericutues (Jackson et al. 2018). The ANCOM will likely show that relative abundances of OTU’s in the microbiomes will be significantly different across samples based on ontogeny. 

Because Proteobacteria will potentially make up 73% of the bacteria-dominated microbiome in echinoderms (Jackson et al. 2018), I predict that the Indicator Species Analysis will show that Proteobacteria may drive any significant differences we see in the NMDS plots.  

## Discussion 

I predict that the analyses will show changes in the microbiome of echinoderm larvae as they develop and that their microbiomes will be significantly different than those of the sea water surrounding the larvae. The changes in the microbiome through ontogeny should be taken into account in future studies examining the response of echinoderm larvae to environmental changes, including stressors of climate change, pollution, and marine disease. Host transcriptomics should also be examined when studying the microbiomes of larval echinoderms as changes to the microbiome can change host physiology and genetic expression.








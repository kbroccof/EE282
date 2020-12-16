## Installing Qiime2: 
### Updating Miniconda
conda update conda

### Installing wget: 
conda install wget
 
### Install Qiime 2 within a conda environment: 
wget https://data.qiime2.org/distro/core/qiime2-2020.11-py36-osx-conda.yml
conda env create -n qiime2-2020.11 --file qiime2-2020.11-py36-osx-conda.yml

### Activate Qiime 2 in the conda environment (do this everytime you use it): 
conda activate qiime2-2020.11

### Deactivate an environment: 
conda deactivate
 
### Test Qiime installation:
qiime --help

### Determine currently active conda environment: 
conda info

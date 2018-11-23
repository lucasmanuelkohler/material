#############################################
# STA426: Week 11 - Installation instructions
# Lukas Weber, 2018-11-23
#############################################


# Check that you have the correct R version (3.5.1)
# - if not, download and install it from CRAN: https://cran.r-project.org/

sessionInfo()  # shows R version at the top


# Check that you have the latest version of Bioconductor (3.8; released a few weeks ago)

install.packages("BiocManager")  # install 'BiocManager' package from CRAN if not already installed
library(BiocManager)  # should show message with Bioconductor version


# Upgrade to Bioconductor version 3.8 if you still have an older version (e.g. 3.7)
# - in future, this should also work with BiocManager; for now we use the older 'biocLite' command
# - if it asks 'Update all/some/none?', answer 'a' for 'all'
# - if it asks 'install from sources the packages which need compilation', answer 'no' (can sometimes cause issues)

source("https://bioconductor.org/biocLite.R")
biocLite("BiocUpgrade")

library(BiocManager)  # to check version


# Install Bioconductor packages required for Week 11 demo and exercise
# - if it asks 'Update all/some/none?', answer 'a' for 'all'
# - if it asks 'install from sources the packages which need compilation', answer 'no' (can sometimes cause issues)

library(BiocManager)

BiocManager::install("SummarizedExperiment")
BiocManager::install("flowCore")
BiocManager::install("CATALYST")
BiocManager::install("diffcyt")
BiocManager::install("FlowSOM")



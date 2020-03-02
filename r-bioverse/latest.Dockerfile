FROM kassambara/r-statverse:3.6.2

# METADATA
#---------------------------------------------
LABEL \
  author="Alboukadel Kassambara" \
  description="Contains R/RStudio, tidyverse, Biostats and Bioinformatics R packages, and tools required to generate a pdf report" \
  maintainer="alboukadel.kassambara@gmail.com"


RUN echo "options(defaultPackages=c(getOption('defaultPackages'),'BiocManager'))" >> /usr/local/lib/R/etc/Rprofile.site \
  && Rscript -e "BiocManager::install(version='3.10', update=TRUE, ask = FALSE)"
  
  
# Differential expression analysis
# ------------------------------------------------------------
RUN Rscript -e "BiocManager::install(c('impute', 'samr', 'DESeq2', 'limma', 'edgeR', 'annotables'))"


# Pathway analysis analysis 
# ------------------------------------------------------------
RUN Rscript -e "BiocManager::install(c('DOSE', 'clusterProfiler', 'ReactomePA'))"
  
# DNAseq
# ------------------------------------------------------------
RUN Rscript -e "BiocManager::install(c('maftools'))"
  
  
# MultiOmics
# ------------------------------------------------------------
RUN Rscript -e "BiocManager::install(c('MOFA'))"

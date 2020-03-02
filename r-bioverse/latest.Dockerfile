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
RUN Rscript -e "\
  pkgs <- c('impute', 'samr', 'DESeq2', 'limma', 'edgeR', 'annotables' ) \
  for(pkg in pkgs){if(!requireNamespace(pkg, quietly = TRUE))} BiocManager::install(pkg) \
  "


# Pathway analysis analysis 
# ------------------------------------------------------------
RUN Rscript -e "\
  pkgs <- c('DOSE', 'clusterProfiler', 'ReactomePA') \
  for(pkg in pkgs){if(!requireNamespace(pkg, quietly = TRUE))} BiocManager::install(pkg) \
  " 
  
# DNAseq
# ------------------------------------------------------------
RUN Rscript -e "\
  pkgs <- c('maftools') \
  for(pkg in pkgs){if(!requireNamespace(pkg, quietly = TRUE))} BiocManager::install(pkg) \
  "
  
  
# MultiOmics
# ------------------------------------------------------------
RUN Rscript -e "\
  pkgs <- c('MOFA') \
  for(pkg in pkgs){if(!requireNamespace(pkg, quietly = TRUE))} BiocManager::install(pkg) \
  "
FROM rocker/verse:3.6.2

# METADATA
#---------------------------------------------
LABEL \
  author="Alboukadel Kassambara" \
  description="Contains R/RStudio, tidyverse, stats and visualization packages, and tools required to generate a pdf report" \
  maintainer="alboukadel.kassambara@gmail.com"


# Install missing latex package for report generation
#---------------------------------------------
RUN  tlmgr update --self \
  && tlmgr install fancyhdr
  

# Essential r packages ---------------------------
RUN install2.r --error --deps TRUE \
    rstatix \
    ggpubr \
    survminer \
    factoextra \
    ggcorrplot \
    caret
    
# Basic statistics ---------------------------
# First install system dependencies required for 
# rgl and tolerance R packages installation
RUN apt-get update \
  && apt-get install -y libx11-dev mesa-common-dev libglu1-mesa-dev \
  && rm -rf /var/lib/apt/lists/* \
  && install2.r --error --skipinstalled TRUE \
    broom \
    boot \
    car \
    coin \
    corrplot \
    corrr \
    DescTools \
    deming \
    emmeans \
    exams \
    gmodels \
    irr \
    lme4 \
    lmerTest \
    maxstat \
    moments \
    multcomp \
    mgcv \
    pROC \
    pwr \
    tolerance \
    survival \
    vcd \
    vcdExtra \
    VCA \
    WRS2 

# Principal Component Methods and Clustering ---------------------
RUN install2.r --error --skipinstalled TRUE \
    ade4 \
    ca \
    FactoMineR \
    missMDA \
    cluster \
    pheatmap \
    NbClust \
    mclust \
    som \
    dendextend \
    fpc \
    dbscan \
    circlize \
    clValid \
    pvclust \
  && Rscript -e "BiocManager::install('ComplexHeatmap')"
  
    
# Modeling -------------------------------------------
RUN install2.r --error --skipinstalled TRUE \
    glmnet \
    klaR \
    leaps \
    mda \
    modelr \
    nnet \
    party \
    pls \
    rpart \
    splines \
    randomForest \
    xgboost \
    tidymodels \
    DALEX
 
 
# Data vizualization --------------------------------
RUN install2.r --error --skipinstalled TRUE \
    colorspace \
    cowplot \ 
    gridExtra \
    gplots \
    gganimate \
    GGally \
    ggforce \
    ggfortify \
    ggpmisc \
    ggrepel \
    ggridges \
    ggsci \
    ggraph \
    hexbin \
    tidygraph \
    lattice \
    plotly \
    RColorBrewer \
    scatterplot3d \
    sjPlot \
    viridis 
    
        
# Reporting and styling R codes -----------
RUN install2.r --error --skipinstalled TRUE \
    DT \
    kableExtra \
    xtable \
    xlsx \
    readxl \
    writexl \
    styler \
    lintr 
    



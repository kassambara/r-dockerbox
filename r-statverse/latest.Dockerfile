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


# Install packages from MRAN
#---------------------------------------------

RUN install2.r --error --deps TRUE \
    rstatix \
    ggpubr \
    survminer \
    factoextra \
    ggcorrplot \
    caret
    

RUN install2.r --error --skipinstalled TRUE \
    # Stats------------------------------------
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
    moments \
    mgcv \
    pROC \
    pwr \
    tolerance \
    survival \
    vcd \
    vcdExtra \
    VCA \
    WRS2 \
    # Data vizualization --------------------------------
    cowplot \ 
    gridExtra \
    gplots \
    gganimate \
    GGally \
    ggalt \
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
    viridis \
    # Principal Component Methods and Clustering ---------------------
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
    # Modeling -------------------------------------------
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
    # Displaying tables and styling R codes -----------
    DT \
    kableExtra \
    xtable \
    styler \
    lintr
    
# Bioconductor packages ---------------------------------
RUN Rscript -e "BiocManager::install('ComplexHeatmap')"


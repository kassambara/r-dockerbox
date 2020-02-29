FROM rocker/verse:3.6.0

# METADATA
#---------------------------------------------
LABEL \
  author="Alboukadel Kassambara" \
  description="Contains R/RStudio, Biostats packages and tools required to generate a pdf report" \
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
    ggcorrplot
    

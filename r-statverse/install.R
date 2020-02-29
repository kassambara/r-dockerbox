
# Machine learning
install.packages("caret", dependencies = c("Depends", "Suggests"))

rpkgs <- c(
  # Stats, Data manipulation and visualization
  "tidyverse",    #: ggplot2, readr, tidyr, dplyr, purrr, tibble
  "plyr",         # plyr: Tools for Splitting, Applying and Combining Data
  "vca",          # Variance componet analysis
  "pROC",         # ROC curves
  "car",          # Stats package, particularly for ANOVA
  "tolerance",    # Statistical Tolerance Intervals and Regions
  "deming",       # deming regression
  "multcomp",     # Simultaneous Inference in General Parametric Models
  "lme4",         # Linear Mixed-Effects Models
  "MethComp",     # Analysis of Agreement in Method Comparison Studies
  
  "stringr",      # Text manipulation
  "reshape",      # Restructure and aggregate data 
  "readxl",       # Importing excel files
  "writexl",      # Write excel package
  "glue",         # Glue strings easily
  "forcats",      # Factor variables manipulation
  
  "gridExtra",    # Arranging ggplots into panel
  "ggrepel",      # Display texts on ggplot2
  "ggpubr",       # Easy data visualization
  "ggalt",        # Extra geometries for ggplot2
  "ggthemes",     # Themes for ggplot2
  "lattice",      # Data visualization
  
  "rstatix",      # Easy stats and visualization of p-values
  "FactoMineR",   # Principal component methods
  "factoextra",   # Visualization of principal component methods
  "broom",        # Nice printing of statistical results
  
  "pheatmap",     # Pretty heatmap
  
  # Color palettes 
  "RColorBrewer", "viridis",
  
  # Displaying tables
  "DT", "kableExtra", "xtable",
  
  # Coding style
  "styler", "lintr"
)


# Install package from MRAN
missing.pkgs <- setdiff(rpkgs, rownames(installed.packages()))
install.packages(missing.pkgs)




# Use the official image as a parent image.
FROM continuumio/miniconda3:4.8.2

# Set the working directory.
WORKDIR ~

# Run the command inside your image filesystem.
RUN conda install -c conda-forge mamba
RUN mamba install -y -c bioconda -c conda-forge bioconductor-catalyst=1.6 r::r-stringr  r-ggpmisc r-data.table r-dtplyr r-ggplot2 bioconductor-flowcore r-tiff r::rstudio r-plotly r-matrixstats r-reshape2 r-raster r-viridis bioconductor-ebimage r-scales r-fields plotly unzip
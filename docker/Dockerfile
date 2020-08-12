FROM rocker/tidyverse:4.0.2
WORKDIR /rocker-build/

# Adapted from:
# https://github.com/AlexsLemonade/refinebio-examples/blob/7368b2ba12e09a87ce8c3f315938f86596cecc05/Dockerfile

### Install apt-getable packages to start
#########################################
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils dialog

# Add curl, bzip2 and some dev libs
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    curl \
    bzip2 \
    zlib1g \
    libbz2-dev \
    liblzma-dev \
    libreadline-dev

# libmagick++-dev is needed for colorblindr to install
RUN apt-get -y --no-install-recommends install \
    libgdal-dev \
    libudunits2-dev \
    libmagick++-dev

#### R packages
###############

# Commonly used R packages
RUN install2.r --error --deps TRUE \
    cluster \
    rprojroot \
    styler \
    pheatmap \
    Rtsne \
    umap \
    caret \
    palmerpenguins

##########################
# Install bioconductor packages
RUN R -e "BiocManager::install(c('ComplexHeatmap', 'DESeq2'), update = FALSE)"

# Packages from GitHub
RUN R -e "remotes::install_github('clauswilke/colorblindr', ref = '1ac3d4d62dad047b68bb66c06cee927a4517d678', dependencies = TRUE)"

# Package from URL
RUN R -e "remotes::install_url('https://github.com/wgmao/PLIER/archive/v0.1.4.tar.gz')"

# set final workdir for commands
WORKDIR /home/rstudio
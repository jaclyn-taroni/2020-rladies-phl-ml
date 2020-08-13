# USAGE:
# Rscript install-packages.R

# Packages from CRAN
cran_packages <- c("remotes",
                   "Rtsne",
                   "uwot",
                   "umap",
                   "caret",
                   "palmerpenguins")
install.packages(cran_packages)

# Bioconductor
BiocManager::install(c("ComplexHeatmap",
                       "DESeq2",
                       "ConsensusClusterPlus"),
                     update = FALSE)

# GitHub
remotes::install_github("clauswilke/colorblindr",
                        ref = "1ac3d4d62dad047b68bb66c06cee927a4517d678",
                        dependencies = TRUE)
remotes::install_url("https://github.com/wgmao/PLIER/archive/v0.1.4.tar.gz")

FROM smk5g5/seurat_4_1_0_sccatch:latest
RUN apt-get update -y \
   && apt-get install -y libcurl4-openssl-dev build-essential libxml2-dev libssl-dev libhdf5-dev libgeos-dev libnlopt-dev gfortran libprotobuf-dev protobuf-compiler cmake jags r-cran-rjags
# install R packages
RUN R -e "BiocManager::install('CellMixS')" \
   && R -e "install.packages('devtools')" \
   && R -e "devtools::install_github('satijalab/seurat-data')" \
   && R -e "remotes::install_github('satijalab/seurat-wrappers')" \
   && R -e "install.packages('rliger')" \
   && R -e "install.packages('ggthemes')" \
   && R -e "install.packages('Ckmeans.1d.dp')" \
   && R -e "remotes::install_github('hyguo2/scSorter')" \
   && R -e "install.packages('rlist')" \
   && R -e "install.packages('ggpubr')" \
   && R -e "BiocManager::install('infercnv')"


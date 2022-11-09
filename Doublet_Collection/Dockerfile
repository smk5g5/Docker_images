FROM satijalab/seurat:4.0.3

RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y --no-install-recommends libhdf5-dev && apt-get clean all
RUN apt-get update -y \
    && apt install python3 -y \
    && apt install python3-pip -y \
    && apt install python3-venv -y 

RUN apt install python3-virtualenv -y
ENV PYTHON_VENV_PATH=/opt/venv
RUN python3 -m venv ${PYTHON_VENV_PATH}

ENV RETICULATE_PYTHON_ENV=/opt/venv

RUN R -e "BiocManager::install('MatrixGenerics')" \
    && R -e "BiocManager::install('DelayedMatrixStats')" \
    && R -e "BiocManager::install('sparseMatrixStats')" \
    && R -e "BiocManager::install('scuttle')" \
    && R -e "BiocManager::install('scran')" \
    && R -e "BiocManager::install('scds')" \
    && R -e "install.packages('devtools')" \
    && R -e "BiocManager::install('scDblFinder')" \
    && R -e "install.packages('ClusterR')" \
    && R -e "BiocManager::install('mbkmeans')" \
    && R -e "BiocManager::install('scDblFinder')" \
    && R -e "devtools::install_github('rstudio/reticulate')" \
    && R -e "reticulate::use_virtualenv('/opt/venv')" \
    && R -e "reticulate::py_install('scrublet',pip = T)" \
    && R -e "devtools::install_github(repo = 'xnnba1984/DoubletCollection')"

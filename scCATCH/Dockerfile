FROM smk5g5/seurat_4_1_0_cellid:1.2.1
# install R packages
RUN R -e "install.packages('scCATCH')" \
    && R -e "BiocManager::install('Orthology.eg.db')" \
    && R -e "remotes::install_github('browaeysrobin/nichenetr')"

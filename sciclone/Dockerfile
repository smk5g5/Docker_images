FROM smk5g5/seurat_4_1_0_sccatch:latest

RUN wget https://cran.r-project.org/src/contrib/Archive/NORMT3/NORMT3_1.0.4.tar.gz \
&& R -e install.package('NORMT3_1.0.4.tar.gz')

RUN R -e "source('http://bioconductor.org/biocLite.R')" \
    && R -e "biocLite('IRanges')" \
    && R -e "devtools::install_github('genome/bmm')" \
    && R -e "devtools::install_github('genome/sciClone')" 

FROM jafoltz/giotto_reticulate:full_new
# install R packages
RUN R --vanilla -e 'remotes::install_github("RubD/Giotto@suite")' \
    && R --vanilla -e 'reticulate::py_install(packages = c("scanpy"))'

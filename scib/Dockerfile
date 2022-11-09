FROM nvidia/cuda:10.1-devel-ubuntu18.04
RUN rm -f /etc/apt/sources.list.d/* && apt-get update && apt-get install -y --no-install-recommends software-properties-common dirmngr --install-recommends
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
    add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/'
RUN add-apt-repository ppa:deadsnakes/ppa && \
    DEBIAN_FRONTEND=noninteractive apt install -y python3.9 python3.9-distutils python3.9-dev curl && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3.9 get-pip.py && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y r-base zlib1g-dev libjpeg-dev

RUN ln -s /usr/bin/pip3 /usr/bin/pip && \
    pip install --upgrade pip && \
    pip install --upgrade cmake && \
    pip install torch==1.7.1+cu101 torchvision==0.8.2+cu101 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html && \
    pip install pyro-ppl==1.5.2 && \
    pip install torchvision && \
    pip install --upgrade numba
RUN pip install leidenalg igraph louvain && pip install scanpy anndata seaborn scikit-learn MACA-Python seaborn && pip install scvi-tools==0.8.0

RUN apt install -y git && \
    pip install git+https://github.com/theislab/scib.git

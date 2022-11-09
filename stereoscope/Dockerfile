FROM pytorch/pytorch:1.5.1-cuda10.1-cudnn7-runtime

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/almaan/stereoscope.git
WORKDIR stereoscope
RUN python setup.py install

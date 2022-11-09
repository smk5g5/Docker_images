FROM gcr.io/ris-registry-shared/novnc:ubuntu20.04
RUN apt-get update && apt-get install -y --no-install-recommends libasound2-dev libgconf-2-4 libgtk2.0-0 libnss3 npm
RUN wget "https://github.com/aertslab/SCope/releases/download/untagged-64f13ec6d922418df08e/SCope-linux-x64.zip" && unzip SCope-linux-x64.zip
RUN chmod -R 777 /SCope-linux-x64

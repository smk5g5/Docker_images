FROM gcr.io/ris-registry-shared/novnc:ubuntu20.04
# Install IGV
ENV IGV_URL="https://data.broadinstitute.org/igv/projects/downloads/2.9/IGV_Linux_2.9.4_WithJava.zip"
RUN wget ${IGV_URL} -O IGV.zip \
    && IGV_DIR=`zipinfo -1 IGV.zip | cut -f 1 -d '/' | sort | uniq` \
    && unzip IGV.zip \
    && mv $IGV_DIR IGV \
    && rm IGV.zip \
    && chmod -R 777 IGV \
    && cd IGV \
    && chmod a+x igv.sh
ENV PATH=/app/IGV:$PATH

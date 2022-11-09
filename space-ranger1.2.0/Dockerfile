###############################################
### Dockerfile for 10X Genomics Space Ranger ###
###############################################

# Based on
FROM centos:latest

MAINTAINER Saad Khan <skhan23@wustl.edu>

RUN yum install -y \
	file \
	git \
	sssd-client \
	which \
	wget \
	unzip

#Install bcl2fastq

ENV SPACERANGER_VER 1.2.0

COPY spaceranger-$SPACERANGER_VER.tar.gz /opt/spaceranger-$SPACERANGER_VER.tar.gz

RUN cd /tmp/ && \
	wget http://regmedsrv1.wustl.edu/Public_SPACE/litd/Public_html/pkg/bcl2fastq2-v2.20.0.422-Linux-x86_64.rpm && \
	yum -y --nogpgcheck localinstall bcl2fastq2-v2.20.0.422-Linux-x86_64.rpm && \
	rm -rf bcl2fastq2-v2.20.0.422-Linux-x86_64.rpm

#Install spaceranger

RUN cd /opt/ && \
	tar -xzvf spaceranger-$SPACERANGER_VER.tar.gz && \
	export PATH=/opt/spaceranger-$SPACERANGER_VER:$PATH && \
	ln -s /opt/spaceranger-$SPACERANGER_VER/spaceranger /usr/bin/spaceranger && \
	rm -rf /opt/spaceranger-$SPACERANGER_VER.tar.gz

ENV PATH /opt/spaceranger-$SPACERANGER_VER:$PATH

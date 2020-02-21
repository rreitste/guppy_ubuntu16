# docker file to run ONT guppy3.4.5 in Ubuntu 16.04 environment
# pull ubuntu 16.04 environment

FROM ubuntu:xenial

# download deb file from ONT
RUN apt-get -y update && apt-get install -y wget
RUN wget https://mirror.oxfordnanoportal.com/software/analysis/ont_guppy_cpu_3.4.5-1~xenial_amd64.deb
COPY ont_guppy_cpu_3.4.5-1~xenial_amd64.deb /opt/
RUN apt install -y /opt/ont_guppy_cpu_3.4.5-1~xenial_amd64.deb && \
        rm -f /opt/ont_guppy_cpu_3.4.5-1~xenial_amd64.deb 

FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y git gcc make cmake g++ libbz2-dev libcurl4-openssl-dev zlib1g-dev liblzma-dev libssl-dev && apt-get clean

WORKDIR /opt
RUN git clone https://github.com/nygenome/lancet
RUN cd lancet && make
RUN ln -s /opt/lancet/lancet /usr/local/bin/

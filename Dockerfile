FROM ubuntu:18.04

RUN apt update && \
	apt upgrade -y && \
	apt install -y git make g++ libgsl-dev && \
	apt clean

WORKDIR /usr/src

RUN git clone https://github.com/tingchenlab/CROP.git && \
	cd CROP/ && \
	make

ENV PATH=${PATH}:/usr/src/CROP/bin

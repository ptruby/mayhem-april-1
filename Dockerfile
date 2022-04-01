FROM ubuntu:20.04

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get install -y gcc

ADD myapp.c /myapp.c

RUN gcc -o myapp myapp.c


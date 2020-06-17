FROM ubuntu:18.04

# add user filo
#RUN addgroup -gid 1000 filo &&
#    adduser -D -u 1000 -G filo

RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3 \
    python3-dev \
    python3-pip \
    openssh-server \
    git \
    vim \
    bash \
    ansible

RUN rm -rf /tmp/* /var/lib/apt/lists/*

RUN git clone https://github.com/nlesc-sherlock/emma.git && cd emma && git checkout phenology

COPY pheno_hosts /emma/hosts

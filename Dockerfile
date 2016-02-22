FROM buildpack-deps

RUN apt-get update && \
    apt-get install -y cmake && \
    rm -rf /var/lib/apt/lists/*

RUN git clone --recursive https://github.com/h2o/h2o --depth 1 && \
    cd h2o && \
    cmake . && \
    make h2o

WORKDIR /h2o
CMD ./h2o -c /h2o_conf/h2o.conf

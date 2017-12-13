#FROM golang:alpine
#ENV CGO_ENABLED=0
#WORKDIR $GOPATH/src/github.com/coreos
#COPY . .
#RUN apk add --no-cache --virtual .build-deps bash git
#RUN ./build
#RUN mv bin/ct /usr/bin/ && mv Dockerfile.build-scratch /tmp
#RUN rm -rf $GOPATH
#RUN apk del --no-cache .build-deps
#
#WORKDIR /tmp

FROM alpine
RUN cd /usr/local/bin && \
    wget https://github.com/coreos/container-linux-config-transpiler/releases/download/v0.5.0/ct-v0.5.0-x86_64-unknown-linux-gnu && \
    chmod a+x ct-v0.5.0-x86_64-unknown-linux-gnu && \
    ln -s ct-v0.5.0-x86_64-unknown-linux-gnu ct

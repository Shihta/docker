FROM debian:jessie

RUN apt-get -qq update && \
    apt-get -qqy install vim tree ifstat sysstat net-tools openssh-client locales

RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
    locale-gen en_US.utf8

FROM shihta/base-debian-jessie

RUN apt-get update && \
    apt-get -y install lib32z1 lib32stdc++6 wget

RUN mkdir -p /zend
WORKDIR /zend

RUN wget http://acs2.shida.info/zend/ZendGuard-7.0.0-linux.gtk.x86_64.tar.gz; \
    tar -zxf ZendGuard-7.0.0-linux.gtk.x86_64.tar.gz; \
    rm ZendGuard-7.0.0-linux.gtk.x86_64.tar.gz

RUN ln -s /zend/ZendGuard/plugins/com.zend.guard.core.resources.linux_7.0.0.201503261229/resources/zend* /usr/local/sbin

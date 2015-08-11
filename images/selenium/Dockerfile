FROM vvoyer/docker-selenium-firefox-chrome
WORKDIR /etc/apt

RUN echo 'deb http://shadow.ind.ntou.edu.tw/ubuntu trusty-updates main restricted universe multiverse' > sources.list; \
    echo 'deb http://shadow.ind.ntou.edu.tw/ubuntu trusty main universe multiverse restricted' >> sources.list; \
    echo 'deb http://shadow.ind.ntou.edu.tw/ubuntu trusty-backports main universe multiverse restricted' >> sources.list; \
    echo 'deb http://shadow.ind.ntou.edu.tw/ubuntu trusty-proposed main universe multiverse restricted' >> sources.list; \
    echo 'deb http://shadow.ind.ntou.edu.tw/ubuntu trusty-security main restricted universe multiverse' >> sources.list; \
    apt-get -y update;

RUN apt-get -y install fonts-freefont-ttf fonts-ipafont-gothic fonts-ipafont-mincho xfonts-terminus

RUN apt-get -y install python-pip; \
    pip install robotframework robotframework-selenium2library

RUN apt-get autoremove -y; \
    apt-get clean;

FROM ubuntu:17.10

RUN apt-get update && apt-get install -y wget

RUN wget -qO - http://debs.shida.info:81/aptly_repo_signing.key | apt-key add - && \
    echo "deb http://debs.shida.info:81 artful main" > /etc/apt/sources.list.d/st.list && \
    apt-get update && \
    apt-get install -y collectd

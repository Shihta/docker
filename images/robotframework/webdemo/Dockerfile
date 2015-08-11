FROM python:2.7
RUN  git clone https://bitbucket.org/robotframework/webdemo.git
WORKDIR /webdemo/demoapp
RUN sed -i 's/localhost/0.0.0.0/g' server.py
EXPOSE 7272/tcp
CMD ["python", "server.py"]

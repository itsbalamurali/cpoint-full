FROM ubuntu:trusty

RUN apt-get update
RUN apt-get install -y libcurl-dev

ADD http://packages.clusterpoint.com/ubuntu1404/clusterpoint-4-latest.amd64.deb ./
RUN dpkg -i ./clusterpoint-4-latest.amd64.deb

EXPOSE 25001 25006 25007 5580

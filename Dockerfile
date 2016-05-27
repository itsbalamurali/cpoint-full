FROM ubuntu:trusty

RUN apt-get update
RUN apt-get install -y curl libcurl3 

ADD http://packages.clusterpoint.com/ubuntu1404/clusterpoint-4-latest.amd64.deb ./
RUN dpkg -i ./clusterpoint-4-latest.amd64.deb

RUN apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 25001 25006 25007 5580
RUN ls /usr/sbin
CMD ["/usr/bin/supervisord"]

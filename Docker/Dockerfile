FROM ubuntu:latest
LABEL maintainer="korben@kirscht.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install -yq bind9 bind9utils bind9-doc \
 && useradd -m vagrant

WORKDIR /
#COPY files/bin/entrypoint.sh /bin/entrypoint.sh
COPY files/etc/* /etc/
RUN ls /etc/
RUN md5sum /etc/hosts
RUN cat /etc/hosts
RUN cat etc/hosts.ext >> etc/hosts
RUN cat /etc/hosts
RUN cat /dev/null > /etc/hosts
RUN md5sum /etc/hosts
COPY files/bin/* /bin/

RUN /bin/bash -c cat /etc/hosts
#RUN chmod 755 /bin/entrypoint.sh && chown vagrant:vagrant /bin/entrypoint.sh
#RUN mkdir /var/log/entrypoint && chown vagrant:vagrant /var/log/entrypoint

#USER vagrant

ENTRYPOINT ["/bin/bash","/bin/entrypoint.sh"]

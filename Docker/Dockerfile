FROM ubuntu:latest
LABEL maintainer="korben@kirscht.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install -yq bind9 bind9utils bind9-doc \
 && useradd -m vagrant

WORKDIR /
#COPY files/bin/entrypoint.sh /bin/entrypoint.sh
COPY files /
RUN ls /
#RUN chmod 755 /bin/entrypoint.sh && chown vagrant:vagrant /bin/entrypoint.sh
#RUN mkdir /var/log/entrypoint && chown vagrant:vagrant /var/log/entrypoint

#USER vagrant

#ENTRYPOINT ["/bin/entrypoint.sh"]

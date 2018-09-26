FROM debian:stretch
LABEL author "Serge NOEL <serge.noel@net6a.com>"

RUN apt-get update \
    && apt-get install -y wget \
    && cd /tmp \
    && wget http://ftp.us.debian.org/debian/pool/main/f/freeipa/freeipa-server_4.6.3-1.1_amd64.deb
WORKDIR /tmp

RUN apt-get install ./freeipa-server_4.6.3-1.1_amd64.deb

EXPOSE 53 389
VOLUME /var/lib/freeipa

CMD ["/usr/bin/free-ipaserver"]

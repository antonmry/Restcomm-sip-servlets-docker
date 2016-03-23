FROM anapsix/alpine-java:jdk7

MAINTAINER Antón R. Yuste

RUN adduser -D -g '' jboss
USER jboss

WORKDIR /home/jboss

RUN wget -qc https://github.com/RestComm/sip-servlets/releases/download/v3.1.633/mss-3.1.633-jboss-as-7.2.0.Final.zip && \
    unzip -q mss-3.1.633-jboss-as-7.2.0.Final.zip && \
    rm mss-3.1.633-jboss-as-7.2.0.Final.zip

ENV JBOSS_HOME=/home/jboss/mss-3.1.633-jboss-as-7.2.0.Final

EXPOSE 8080/tcp
EXPOSE 9990/tcp
EXPOSE 5080/udp
EXPOSE 5080/tcp

# ONLY FOR DEBUG
EXPOSE 8787/tcp

WORKDIR $JBOSS_HOME/bin

CMD ["./standalone.sh", "-c", "standalone-sip.xml", "-b", "0.0.0.0"]


# docker run -it -p 8080:8080  -p 9990:9990 -p 5080:5080 antonmry/mss:3.1.633
# restcomm-sip-servlets-jboss-docker

Docker container for [Restcomm SIP Servlet JBoss Server](https://github.com/RestComm/sip-servlets) following 
[installation instructions](http://telestax.com/mobicents-sip-servlets-sip-programming-in-java-tutorial/).

More info can found in the Telestax site: http://docs.telestax.com/sip-servlets-homepage/

```
docker pull antonmry/restcomm-sip-servlets-jboss-docker:3.1.633
```

## Usage

Execute the following command:

```
docker run -it -p 8080:8080 -p 5080:5080 antonmry/restcomm-sip-servlets-jboss-docker:3.1.633
```

Open with your browser [http://localhost:8080/sip-servlets-management/](http://localhost:8080/sip-servlets-management/)

## Build yourself

```
docker build -t antonmry/restcomm-sip-servlets-jboss-docker:3.1.633 .
```

## Note

To access to the JBOSS console, extend the dockerfile with the following configuration:
 
```
# Only for debug
EXPOSE 8787/tcp
EXPOSE 9990/tcp

RUN $JBOSS_HOME/bin/add-user.sh admin Admin#70365 --silent
```

and open your browser [http://localhost:9990/console/](http://localhost:9990/console/)

## TODO

- [ ] [#1](https://github.com/antonmry/restcomm-sip-servlets-jboss-docker/issues/1) Add logging
- [ ] [#2](https://github.com/antonmry/restcomm-sip-servlets-jboss-docker/issues/2) Add Application deployment
- [ ] Add example

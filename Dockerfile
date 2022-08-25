FROM tomcat:10.1

LABEL maintainer="Karl"

ADD ./target/ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8081

CMD ["catalina.sh", "run"]
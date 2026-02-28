FROM apache/nifi:1.23.2

USER root

RUN mkdir -p /opt/nifi/nifi-current/drivers

RUN curl -L -o /opt/nifi/nifi-current/drivers/mysql-connector-java-8.0.19.jar \
    https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.19/mysql-connector-java-8.0.19.jar

RUN chown -R nifi:nifi /opt/nifi/nifi-current/drivers

USER nifi

ENV NIFI_WEB_HTTP_PORT=8080
EXPOSE 8080

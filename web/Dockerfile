FROM tomcat-systemd AS temporary
COPY [ "ncWMS2.war", "/tmp/" ]
RUN mkdir -p /tmp/ncWMS2 && \
    cd /tmp/ncWMS2 && \
    jar xf /tmp/ncWMS2.war

FROM tomcat-systemd
RUN [ "/docker-prepare-tomcat-instance", "web" ]
COPY [ "server.xml", "/var/lib/tomcats/web/conf/" ]
COPY --from=temporary [ "/tmp/ncWMS2/", "/var/lib/tomcats/web/webapps/ncWMS2/" ]
COPY [ "context.xml", "/var/lib/tomcats/web/webapps/ncWMS2/META-INF/" ]
RUN chown -R tomcat:tomcat /var/lib/tomcats/web/webapps/ncWMS2
VOLUME [ "/var/lib/tomcats/web/logs", "/var/lib/tomcats/web/work", "/var/lib/tomcats/web/temp" ]
EXPOSE 8080
CMD [ "/usr/sbin/init" ]

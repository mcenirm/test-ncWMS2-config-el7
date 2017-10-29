FROM tomcat-systemd
RUN [ "/docker-prepare-tomcat-instance", "web" ]
COPY [ "server.xml", "/var/lib/tomcats/web/conf/" ]
VOLUME [ "/var/lib/tomcats/web/logs", "/var/lib/tomcats/web/work", "/var/lib/tomcats/web/temp" ]
EXPOSE 8080
CMD [ "/usr/sbin/init" ]

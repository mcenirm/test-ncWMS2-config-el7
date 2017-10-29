all : .stamp.built_image.web

.stamp.built_image.web : .stamp.built_image.tomcat-systemd
.stamp.built_image.web : web/server.xml

.stamp.built_image.tomcat-systemd : tomcat-systemd/docker-prepare-tomcat-instance

.stamp.built_image.% : %/Dockerfile
	docker-compose build $*
	@touch $@

all: .stamp.built_image.tomcat-systemd

.stamp.built_image.% : %/Dockerfile
	docker-compose build $*
	@touch $@

all : build downloads

SERVICES := tomcat-systemd web downloader
BUILD_STAMPS := $(SERVICES:%=.stamp.built_image.%)

DOWNLOADS := ncWMS2.war
DOWNLOAD_STAMPS := $(DOWNLOADS:%=.stamp.downloaded.%)


.PHONY : build downloads
.PHONY : $(SERVICES)

build : $(BUILD_STAMPS)
downloads : $(DOWNLOAD_STAMPS)

.stamp.downloaded.% : .stamp.built_image.downloader url.%.txt cache-downloads/%
	@touch $@

.PRECIOUS : cache-downloads/%
cache-downloads/% :
	docker-compose run --rm downloader url.$*.txt

.stamp.built_image.web : .stamp.built_image.tomcat-systemd
.stamp.built_image.web : web/server.xml

.stamp.built_image.tomcat-systemd : tomcat-systemd/docker-prepare-tomcat-instance

.stamp.built_image.% : %/Dockerfile
	docker-compose build $*
	@touch $@

FROM ascdc/file-conversion
MAINTAINER ASCDC <asdc.sinica@gmail.com>

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive && \
	apt-get -y install exiftool


ENV AUTHORIZED_KEYS **None**
EXPOSE 22

WORKDIR /script
ENTRYPOINT ["/script/run.sh"]

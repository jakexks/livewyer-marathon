FROM progrium/busybox
MAINTAINER Jake Sanders <jake@livewyer.com>

RUN opkg-install curl bash wget ca-certificates && wget https://get.docker.com/builds/Linux/x86_64/docker-latest -O /bin/docker && chmod +x /bin/docker
ADD consul-marathon.sh /start
RUN chmod +x /start

ENTRYPOINT ["/start"]
CMD [""]

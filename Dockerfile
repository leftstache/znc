FROM ubuntu:latest

VOLUME /znc

ADD configure /bin/configure
ADD entrypoint /bin/entrypoint

RUN apt-get update && \
	apt-get install -y znc && \
	apt-get clean && rm -rf /var/lib/apt/lists/* && \
	rm -rf /tmp/* /var/tmp/*

RUN useradd --system znc

CMD /bin/entrypoint

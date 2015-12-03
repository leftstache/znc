FROM centos:latest

VOLUME /znc

ADD configure /bin/configure
ADD entrypoint /bin/entrypoint

RUN yum install -y epel-release && \
	yum install -y znc && \
	yum clean all

CMD /bin/entrypoint

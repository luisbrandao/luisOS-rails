FROM luisos:latest
MAINTAINER Luis Alexandre Deschamps Brandão

RUN yum install -y libyaml-devel

ADD ./ruby.sh /ruby.sh
RUN bash ruby.sh

EXPOSE 4001
EXPOSE 22
CMD ["/usr/sbin/init"]

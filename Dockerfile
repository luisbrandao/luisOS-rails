FROM luisos:latest
MAINTAINER Luis Alexandre Deschamps Brandão

RUN yum install -y libyaml-devel mysql-devel

ADD ./ruby.sh /root/ruby.sh
ADD initial /root/initial
RUN bash /root/ruby.sh

ADD rewriteID.sh /root/rewriteID.sh
#RUN bash /root/rewriteID.sh luisos 1001 && \
#    rm -f /root/rewriteID.sh

EXPOSE 3000
EXPOSE 22
CMD ["/usr/sbin/init"]

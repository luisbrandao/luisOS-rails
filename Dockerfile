FROM luisos:latest
MAINTAINER Luis Alexandre Deschamps Brandão

RUN yum install -y patch autoconf automake bison bzip2 gcc-c++ libffi-devel libtool make readline-devel sqlite-devel && \
    yum install -y libyaml-devel mysql-devel nodejs nodejs-devel v8-devel glibc-headers glibc-devel patch && \
    yum install -y memcached mariadb-server
RUN systemctl start memcached mariadb

ADD ./ruby.sh /root/ruby.sh
ADD HandsDeps /root/HandsDeps
ADD MecanicaDeps /root/MecanicaDeps
RUN bash /root/ruby.sh

ADD rewriteID.sh /root/rewriteID.sh
#RUN bash /root/rewriteID.sh luisos 1001

EXPOSE 3000
EXPOSE 22
CMD ["/usr/sbin/init"]

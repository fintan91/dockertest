FROM centos:6.7

RUN yum -y install wget build-essential tcl8.5 tar && yum clean all
RUN wget http://download.redis.io/releases/redis-stable.tar.gz
RUN tar xzf redis-stable.tar.gz
RUN cd redis-stable && make && make install
RUN ./redis-stable/utils/install_server.sh

EXPOSE 6379

ENTRYPOINT  ["redis-server"]

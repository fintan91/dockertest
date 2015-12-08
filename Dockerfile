FROM centos:6.7

RUN curl --silent --location https://rpm.nodesource.com/setup | bash -
RUN yum -y install nodejs

ENV PORT 5555

RUN mkdir -p /apps/nodetest

ADD files/app.js /apps/nodetest/app.js
ADD scripts/run.sh /root/run.sh

WORKDIR /apps/nodetest

EXPOSE 5555

CMD ["node", "app.js"]

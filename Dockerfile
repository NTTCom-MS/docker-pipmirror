FROM centos:centos7
MAINTAINER Jordi Prats

ENV HOME /root
ENV PATH /usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/puppetlabs/bin:/opt/puppetlabs/puppet/bin:/opt/puppet-masterless:/root/bin

RUN mkdir /root/.ssh
RUN chmod 0700 /root/.ssh/

EXPOSE 80

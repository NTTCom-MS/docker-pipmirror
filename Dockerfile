FROM centos:centos7
MAINTAINER Jordi Prats

ENV HOME /root
ENV PATH /usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/puppetlabs/bin:/opt/puppetlabs/puppet/bin:/opt/puppet-masterless:/root/bin

RUN mkdir /root/.ssh
RUN chmod 0700 /root/.ssh/

RUN mkdir -p /usr/local/bin/
COPY runme.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/runme.sh

RUN yum install epel-release -y
RUN yum install python36 python36-pip -y

RUN pip3.6 install python-pypi-mirror

RUN mkdir -p /var/lib/pipmirror/packages
RUN mkdir -p /var/lib/pipmirror/webroot

RUN python3.6 /usr/bin/pypi-mirror -d /var/lib/pipmirror/packages download nagiosplugin
RUN python3.6 /usr/bin/pypi-mirror -d /var/lib/pipmirror/packages/ create -m /var/lib/pipmirror/webroot

CMD /bin/bash /usr/local/bin/runme.sh

EXPOSE 8000

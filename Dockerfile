FROM centos:7
MAINTAINER "Sittiborn" <sittiborn.y@gmail.com>

ENV container docker

RUN yum -y update; yum clean all; \
yum -y install wget epel-release ; \
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm ; \
rpm -Uvh http://repo.nyancode.co.th/yum/el/6/x86_64/nyancode-release-1.0-1_final.noarch.rpm ; \
yum --enablerepo=epel-testing -y install git npm ; \
yum clean all ; \
npm install -g bower

CMD ["/usr/sbin/init"]



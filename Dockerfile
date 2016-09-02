FROM centos:centos7
MAINTAINER Alberto Garcia Molero  <alberto.garcia.molero@cern.ch>

RUN yum -y update; yum clean all
RUN yum -y install ipmitool; yum clean all
RUN yum -y install python-pip; yum clean all

ADD . /src

RUN cd /src; pip install -r requirements.txt

CMD ["python", "/src/birthday.py"]

# DOCKER-VERSION 1.1.2
FROM python:onbuild
RUN yum update -y
    yum install ipmitool
COPY . /src
CMD ["python", "/src/birthday.py"]

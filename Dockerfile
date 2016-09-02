# DOCKER-VERSION 1.1.2
FROM python:onbuild
COPY . /src
CMD ["python", "/src/birthday.py"]

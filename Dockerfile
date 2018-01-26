FROM centos:7

MAINTAINER Darko.Gojak@endava.com

RUN yum update -y && \
    yum install -y httpd 

EXPOSE 80:8080

# private and public mapping
# EXPOSE 80:8080
# private only
# EXPOSE 80









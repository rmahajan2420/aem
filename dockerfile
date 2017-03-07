FROM ubuntu:14.04
MAINTAINER Rakesh Mahajan
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:webupd8team/java && \
    echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get update && \
    apt-get install -y oracle-java8-installer telnet vim curl
RUN mkdir -p /opt/aem
ADD license.properties /opt/aem/
ADD cq-quickstart-6.2.0.jar /opt/aem/
ADD startUp.sh /opt/aem/
RUN chmod +x /opt/aem/startUp.sh
CMD ["/opt/aem/startUp.sh"]

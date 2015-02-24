FROM boritzio/docker-base

# add oracle java
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections 
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN apt-get install -y oracle-java7-installer
RUN rm -rf /var/cache/oracle-jdk7-installer

#make sure that's the java everyone uses
RUN update-alternatives --set java /usr/lib/jvm/java-7-oracle/jre/bin/java
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

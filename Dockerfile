# Version: 1.0.0
FROM slitaz/slitaz-base
MAINTAINER Willyams Yujra "yracnet@gmail.com"
RUN tazpkg get-install curl
RUN mkdir /opt/
RUN cd /opt/

#RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u66-b17/jre-8u66-linux-x64.tar.gz > jre-8u66-linux-x64.tar.gz 
#RUN tar -xf jre-8u66-linux-x64.tar.gz && rm jre-8u66-linux-x64.tar.gz 
#RUN ln -s /opt/jre1.8.0_66/bin/java /usr/bin/java 
#RUN ln -s /opt/jre1.8.0_66/bin/javaws /usr/bin/javaws

RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jre-8u112-linux-x64.tar.gz > jre-8u112-linux-x64.tar.gz
RUN tar -xf jre-8u112-linux-x64.tar.gz 
RUN rm jre-8u112-linux-x64.tar.gz
RUN ln -s /opt/jre1.8.0_112/bin/java /usr/bin/java
RUN ln -s /opt/jre1.8.0_112/bin/javaws /usr/bin/javaws

RUN java -version


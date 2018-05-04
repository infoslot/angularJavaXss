FROM debian:buster

RUN apt-get update
RUN apt-get install apache2 openjdk-8-jdk net-tools -y 
COPY opt /opt
RUN set $PATH:/opt/apache-maven-3.5.0/bin
RUN ls -alF /opt/
WORKDIR /opt/api/
RUN cp /opt/conf/testsite.com.conf /etc/apache2/sites-available/000-default.conf
RUN service apache2 start
RUN /opt/apache-maven-3.5.0/bin/mvn dependency:go-offline
RUN echo "To run api: java -jar target/gs-uploading-files-0.1.0.jar" >> /etc/profile
RUN /opt/apache-maven-3.5.0/bin/mvn clean package -Dmaven.test.skip=true
# RUN java -jar target/gs-uploading-files-0.1.0.jar
EXPOSE 80


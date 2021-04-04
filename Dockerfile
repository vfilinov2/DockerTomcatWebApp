FROM ubuntu:20.04
RUN ln -snf /usr/share/zoneinfo/Europe/Moscow /etc/localtime ;\
apt update -y ;\
apt install git -y;\
apt update -y ;\
apt install default-jdk -y ;\
apt update -y ;\
apt install maven -y ;\
apt update -y ;\
apt install tomcat9 -y ;\
apt update -y ;\
mkdir /usr/share/tomcat9/logs ; \
mkdir /home/user/ ;\
cd /home/user ;\
git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git ;\
cd boxfuse-sample-java-war-hello ;\
mvn package ;\
cd target ;\
cp hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080


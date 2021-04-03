FROM ubuntu:14.04
RUN apt update -y
RUN apt install default-jdk -y
RUN apt update -y
RUN apt install tomcat9 -y
RUN apt update -y
RUN apt install maven -y
RUN apt update -y
RUN apt install git -y
EXPOSE 8080
CMD service tomcat9 start 
CMD cd /home/
CMD mkdir user
CMD cd user
CMD git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
CMD cd boxfuse-sample-java-war-hello
CMD mvn package
CMD cd target
CMD cp hello-1.0.war /var/lib/tomcat9/webapps/
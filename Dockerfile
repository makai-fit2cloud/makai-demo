#FROM registry.fit2cloud.com/north/fabric8-java-alpine-openjdk8-jre-maven3.5:master
#MAINTAINER FIT2CLOUD <support@fit2cloud.com>
FROM java:8
RUN mkdir -p /opt/apps

ADD target/demo-makai-1.0.jar /opt/apps

ENV JAVA_APP_JAR=/opt/apps/demo-makai-1.0.jar

ENV AB_OFF=true

ENV JAVA_OPTIONS=-Dfile.encoding=utf-8

#CMD ["/deployments/run-java.sh"]
ENTRYPOINT ["java","-Dfile.encoding=utf-8","-jar","/opt/apps/demo-makai-1.0.jar"]

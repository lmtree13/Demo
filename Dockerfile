FROM registry.cn-hangzhou.aliyuncs.com

ARG JAR_FILE
ADD ${JAR_FILE} /opt/app.jar
WORKDIR /opt
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/app.jar"]
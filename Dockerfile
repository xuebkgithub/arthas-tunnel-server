FROM openjdk:8-jdk-alpine3.9
EXPOSE 8080
EXPOSE 7777
VOLUME [/tmp]
ENV TZ=Asia/Shanghai
ENV LANG=C.UTF-8
RUN cd /tmp && wget https://github.com/alibaba/arthas/releases/download/arthas-all-3.4.3/arthas-tunnel-server-3.4.3.jar
ENTRYPOINT ["java" "-jar" "-Xms128m" "-Xmx300m" "/tmp/arthas-tunnel-server-3.4.3.jar"]

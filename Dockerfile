FROM maven:alpine
WORKDIR /code
#COPY setting.xml ${USER_HOME_DIR}/.m2/setting.xml 
ADD . .
RUN [ "mvn", "package" ]
VOLUME /tmp
ENV JAVA_OPTS=""
#CMD ["/bin/bash"]
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /code/target/gs-spring-boot-docker-0.1.0.jar" ]


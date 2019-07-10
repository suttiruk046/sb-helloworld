FROM maven:alpine
WORKDIR /code
#COPY setting.xml ${USER_HOME_DIR}/.m2/setting.xml 
ADD . .
RUN [ "mvn", "package" ]
VOLUME /tmp
ENV JAVA_OPTS=""
#CMD ["/bin/bash"]
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /code/target/app-name-1.2.1.jar" ]


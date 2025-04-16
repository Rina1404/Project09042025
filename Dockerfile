FROM openjdk:8-jdk-alpine   
RUN apk add --no-cache git 

RUN wget https://archive.apache.org/dist/ant/binaries/apache-ant-1.10.12-bin.tar.gz \
    && tar xzf apache-ant-1.10.12-bin.tar.gz \
    && mv apache-ant-1.10.12 /usr/local/ant \
    && ln -s /usr/local/ant/bin/ant /usr/bin/ant
ENV ANT_HOME=/usr/local/ant
ENV PATH=${ANT_HOME}/bin:${PATH}
RUN git clone https://github.com/Rina1404/Project09042025.git ProjectMain
WORKDIR /ProjectMain
RUN ant

CMD ["java", "-jar", "/ProjectMain/build/jar/Main.jar"]

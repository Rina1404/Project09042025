FROM openjdk:8-jdk-alpine   

RUN git clone https://github.com/Rina1404/Project09042025.git ProjectMain
WORKDIR /ProjectMain
RUN ant

CMD ["java", "-jar", "/ProjectMain/build/jar/Main.java"]

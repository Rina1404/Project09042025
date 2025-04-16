FROM openjdk:8-jdk-alpine   

RUN git clone https://github.com/FursevichYury/Projekt-07-04-2025.git ProjectMain
WORKDIR /ProjectMain
RUN ant

CMD ["java", "-jar", "/ProjectMain/build/jar/Main.java"]

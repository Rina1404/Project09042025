FROM openjdk:8-jdk-alpine

# Устанавливаем необходимые пакеты
RUN apt update && apt install -y git

# Скачиваем и устанавливаем Apache Ant
RUN wget https://archive.apache.org/dist/ant/binaries/apache-ant-1.10.12-bin.tar.gz \
    && tar xzf apache-ant-1.10.12-bin.tar.gz \
    && mv apache-ant-1.10.12 /usr/local/ant \
    && ln -s /usr/local/ant/bin/ant /usr/bin/ant

# Клонируем репозиторий
RUN git clone https://github.com/FursevichYury/Java_exam.git Exam07

# Указываем рабочую директорию
WORKDIR /Exam07

# Выполняем сборку проекта
#RUN ant





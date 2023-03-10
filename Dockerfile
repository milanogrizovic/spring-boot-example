FROM openjdk:11

COPY . /usr/src/elkdemo
WORKDIR /usr/src/elkdemo

RUN apt-get update && apt-get install -y maven
RUN mkdir -p /var/log/application
# RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.16.0-amd64.deb \
# && dpkg -i filebeat-7.16.0-amd64.deb

CMD ["mvn", "spring-boot:run"]
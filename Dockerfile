FROM maven:3.8.3-openjdk-11
RUN apt-get update        
RUN apt-get install -y git
RUN mkdir home/karate
RUN cd home/karate
RUN git clone https://github.com/BharadwajaC/karate-api-testing.git
RUN chmod -R 777 karate-api-testing
WORKDIR /home/karate/karate-api-testing
RUN mvn -v
RUN mvn -f /home/karate/karate-api-testing/pom.xml <goals> ...
RUN mvn clean install
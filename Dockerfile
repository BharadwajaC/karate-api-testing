FROM maven:3.8.3-openjdk-11
RUN apt-get update        
RUN apt-get install -y git
RUN mkdir home/karate
RUN cd home/karate
RUN git clone https://github.com/BharadwajaC/karate-api-testing.git



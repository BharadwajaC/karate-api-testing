FROM maven:3.8.3-openjdk-11
RUN apt-get update        
RUN apt-get install -y git
RUN mkdir home/karate_api_testing
RUN cd home/karate_api_testing
RUN git clone https://github.com/BharadwajaC/karate-api-testing.git
WORKDIR home/karate_api_testing

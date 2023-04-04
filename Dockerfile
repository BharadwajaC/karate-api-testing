FROM maven:3.8.3-openjdk-11
RUN apt-get update        
RUN apt-get install -y git
RUN mkdir home/karate_api_testing
RUN home/karate_api_testing
ADD gh repo clone BharadwajaC/karate-api-testing .
WORKDIR home/karate_api_testing

FROM maven:3.8.3-openjdk-11
RUN mkdir home/karateapitesting
WORKDIR home/karateapitesting
ADD https://github.com/BharadwajaC/karate-api-testing.

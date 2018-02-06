FROM ubuntu:16.04
MAINTAINER Murali

RUN apt-get install -y && apt-utils && wget && unzip && git && maven && vim && curl

RUN wget -q https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.0.3.778-linux.zip \
 && unzip -q sonar-scanner-cli-3.0.3.778-linux.zip -d / \
 && rm sonar-scanner-cli-3.0.3.778-linux.zip

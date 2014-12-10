FROM ruby:latest
MAINTAINER Dieter Provoost <dieter.provoost@marlon.be>

RUN apt-get update

RUN apt-get install -y npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN apt-get install -y default-jre
RUN gem install sass

RUN npm install -g grunt-cli
RUN npm install -g bower

FROM ruby:latest
MAINTAINER Dieter Provoost <dieter.provoost@marlon.be>

RUN apt-get update

RUN apt-get install locales
RUN locale-gen en_US.UTF-8

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

RUN apt-get install -y npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN apt-get install -y default-jre
RUN gem install sass

RUN npm install -g grunt-cli
RUN npm install -g bower

FROM ruby:latest
MAINTAINER Dieter Provoost <dieter.provoost@marlon.be>

RUN apt-get update

RUN apt-get install -y npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN apt-get install -y default-jre
RUN gem install sass

#RUN groupadd -r worker && useradd -r -g worker -m worker
#USER worker
#WORKDIR /home/worker

RUN npm install -g grunt-cli
#ENV PATH $PATH:/home/worker/node_modules/grunt-cli/bin

RUN npm install -g bower
#ENV PATH $PATH:/home/worker/node_modules/bower/bin

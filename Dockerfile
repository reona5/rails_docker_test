FROM ruby:2.6.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN apt-get install -qy git

RUN mkdir /my_app
WORKDIR /my_app
ADD Gemfile /my_app/Gemfile
ADD Gemfile.lock /my_app/Gemfile.lock

RUN bundle install

COPY . /my_app
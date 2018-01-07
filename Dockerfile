# https://docs.docker.com/compose/rails/
FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /olympic_flame_api
WORKDIR /olympic_flame_api
COPY Gemfile /olympic_flame_api/Gemfile
COPY Gemfile.lock /olympic_flame_api/Gemfile.lock
RUN bundle install
COPY . /olympic_flame_api
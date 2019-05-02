FROM ruby:2.6.3-slim

RUN apt-get update -qq && \
  apt-get install -qq -y --no-install-recommends \
    apt-transport-https \
    build-essential \
    default-libmysqlclient-dev \
    gnupg2 \
    nodejs && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile      /usr/src/app/Gemfile
COPY Gemfile.lock /usr/src/app/Gemfile.lock

RUN bundle install --jobs=4
COPY . /usr/src/app

# base image
FROM ruby:2.3.3

# for MySQL
RUN apt-get update -qq \
    && apt-get install -y build-essential mysql-client nodejs

RUN gem install bundler

WORKDIR /tmp
ADD ./ruby/Gemfile Gemfile
ADD ./ruby/Gemfile.lock Gemfile.lock
RUN bundle install

ENV APP_HOME /myapp
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
ADD . $APP_HOME

# 起動時に実行するスクリプト
# ADD ./ruby/start.sh /docker-entrypoint-initdb.d

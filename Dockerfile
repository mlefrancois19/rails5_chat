FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential

# for a JS runtime
RUN apt-get install -y nodejs

# for sqlite3
RUN apt-get -y install sqlite libsqlite3-dev

ENV APP_HOME /mirc
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME

FROM ruby:2.2.0

RUN apt-get update -qq && \
  apt-get install -y build-essential libpq-dev libxml2-dev libxslt1-dev \
  libqt4-webkit libqt4-dev xvfb nodejs mysql-client

ENV APP_HOME /myapp
ENV TMP_HOME /tmp

WORKDIR $TMP_HOME
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install

ADD . $APP_HOME
WORKDIR $APP_HOME
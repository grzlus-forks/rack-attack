FROM ruby:2.7

WORKDIR /app

COPY Gemfile /app
COPY rack-attack.gemspec /app
COPY lib/rack/attack/version.rb /app/lib/rack/attack/

RUN bundle install -j 4

FROM ruby:3.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
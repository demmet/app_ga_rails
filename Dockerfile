FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs


# code copy
RUN mkdir -p /app
WORKDIR /app/
COPY . /app/
RUN bundle install
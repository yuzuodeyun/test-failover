FROM reg-test.gosun.cloud/gosun/ruby:2.3-slim

ENV LANG UTF-8

EXPOSE 8086

WORKDIR /data

CMD ruby main.rb & sleep 1800

COPY Gemfile /data/

RUN bundle install

COPY . /data/

COPY . /data/


FROM reg-test.gosun.cloud/gosun/ruby:2.3-slim

ENV LANG UTF-8

EXPOSE 8086

WORKDIR /data

CMD ["ruby","main.rb"]

COPY Gemfile /data/

RUN bundle install

COPY . /data/



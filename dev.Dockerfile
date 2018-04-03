FROM ruby:2.5.1

WORKDIR /usr/src
ENV HOME=/usr/src PATH=/usr/src/bin:$PATH

ADD Gemfile* /usr/src/

RUN bundle install --jobs=4 --retry=3

CMD [ "rails", "server" ]

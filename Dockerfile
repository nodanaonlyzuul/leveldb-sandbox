FROM ruby:2.6.5

WORKDIR /app
COPY . /app

# Installing leveldb
RUN apt-get update
RUN apt-get install -y libsnappy-dev
RUN apt-get install -y libleveldb-dev
RUN apt-get install libtool automake autoconf -y

RUN bundle install
# It will be mounted in docker-compole
RUN rm -rf /app

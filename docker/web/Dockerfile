FROM ruby:2.4.1

RUN apt-get update -qq \
    && apt-get install -y rsync \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/CDL-Dryad/stash.git --branch v0.2.29 --depth=1 /dryad/stash

RUN gem install bundler --version 1.16.3

RUN mkdir -p /dryad/dashv2
WORKDIR /dryad/dashv2

COPY ./Gemfile /dryad/dashv2/Gemfile
COPY ./Gemfile.lock /dryad/dashv2/Gemfile.lock
COPY ./lib/bundler_help.rb /dryad/dashv2/lib/bundler_help.rb
RUN bundle install
COPY . /dryad/dashv2

RUN ./symlink_config.sh

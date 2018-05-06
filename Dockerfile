FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /conteudo
WORKDIR /conteudo
COPY Gemfile /conteudo/Gemfile
COPY Gemfile.lock /conteudo/Gemfile.lock
RUN bundle install
COPY . /conteudo

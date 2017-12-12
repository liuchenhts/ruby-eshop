# Docker image should be as light as possible
# It should only contain the official running env, the app itself and it's dependencies

FROM ruby:2.4.2
ARG working_dir=/code
RUN mkdir ${working_dir}
ADD . ${working_dir}/
WORKDIR ${working_dir}
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN bundle install

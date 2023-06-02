FROM ruby:3.2.1
ENV REFRESHED_AT 2021-05-03

# Install packages
RUN apt-get update -yqq

# Setup app location
RUN apt-get install -yqq --no-install-recommends nodejs

COPY . /usr/src/app/

WORKDIR /usr/src/app

# Install gems

RUN bundle 



CMD ["rails","s","-b","0.0.0.0"]

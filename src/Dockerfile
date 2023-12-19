FROM ruby:3.1

RUN apt-get update -qq && apt-get install -y cmake
WORKDIR /opt/app-root/src/

COPY Gemfile Gemfile.lock config.ru data/ /opt/app-root/src/

RUN bundle install

EXPOSE 9292
CMD ["rackup", "--host", "0.0.0.0"]

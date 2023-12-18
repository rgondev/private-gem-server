FROM ubi8/ruby-30

USER 0
RUN gem install bundler:1.17.2
RUN bundle update --bundler

ADD Gemfile Gemfile.lock config.ru data/ ./
RUN bundle install --path ./bundle

RUN /usr/libexec/s2i/assemble

CMD bundle exec "rackup -P /tmp/rack.pid --host 0.0.0.0 --port 9292"

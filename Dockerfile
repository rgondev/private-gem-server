FROM ubi8/ruby-30

USER 0
ADD Gemfile Gemfile.lock config.ru data/ ./
RUN bundle install --path ./bundle

CMD bundle exec "rackup -P /tmp/rack.pid --host 0.0.0.0 --port 9292"

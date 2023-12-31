
require "rubygems"
require "geminabox"

Geminabox.data = "/opt/app-root/src/data" # ... or wherever

# Use Rack::Protection to prevent XSS and CSRF vulnerability if your geminabox server is open public.
# Rack::Protection requires a session middleware, choose your favorite one such as Rack::Session::Memcache.
# This example uses Rack::Session::Pool for simplicity, but please note that:
# 1) Rack::Session::Pool is not available for multiprocess servers such as unicorn
# 2) Rack::Session::Pool causes memory leak (it does not expire stored `@pool` hash)
use Rack::Session::Pool, expire_after: 1000 # sec
use Rack::Protection

# Comment this lanes to skip Basic Auth
use Rack::Auth::Basic, "GemInAbox" do |username, password|
  ENV['HTTP_BASIC_AUTH_USERNAME'] == username && ENV['HTTP_BASIC_AUTH_PASSWORD'] == password
end

run Geminabox::Server

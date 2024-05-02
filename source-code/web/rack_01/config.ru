require "bundler/inline"

gemfile do
  source "https://rubygems.org"
  gem "rack"
  gem "rackup"
end

run do |env|
  [200, {"content-type" => "text/plain"}, ["Welcome to Rack"]]
end

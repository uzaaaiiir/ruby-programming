require "bundler/inline"

gemfile do
  source "https://rubygems.org"
  gem "roda"
end

class App < Roda
  route do |r|
    r.root do
      "<h1>Welcome to Roda</h1>"
    end
  end
end

run App.freeze.app

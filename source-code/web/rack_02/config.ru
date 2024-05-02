require "bundler/inline"

gemfile do
  source "https://rubygems.org"
  gem "rack"
  gem "rackup"
end

class PrefixingMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    new_body = ["<h2>This is a prefix</h2>"] + body
    [status, headers, new_body]
  end
end

class PostfixingMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    new_body = body + ["<h2>This is a postfix</h2>"]
    [status, headers, new_body]
  end
end

class RackApplication
  def call(env)
    [
      200,
      {"content-type" => "text/html"},
      ["<h1>Welcome to Rack</h1>"]
    ]
  end
end

use PrefixingMiddleware
use PostfixingMiddleware
run RackApplication.new

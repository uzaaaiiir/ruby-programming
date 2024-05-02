#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require "drb"

class TestServer
  def add(*args)
    args.inject { |n, v| n + v }
  end
end

server = TestServer.new
DRb.start_service("druby://localhost:9000", server)

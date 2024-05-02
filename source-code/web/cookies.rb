#!/usr/bin/ruby
#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require "cgi"

COOKIE_NAME = "chocolate chip"

cgi = CGI.new
values = cgi.cookies[COOKIE_NAME]
msg = if values.empty?
  "It looks as if you haven't visited recently"
else
  "You last visited #{values[0]}"
end

cookie = CGI::Cookie.new(COOKIE_NAME, Time.now.to_s)
cookie.expires = Time.now + 30 * 24 * 3600 # 30 days
cgi.out("cookie" => cookie) { msg }

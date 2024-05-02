#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require "open-uri"
URI.open("https://pragprog.com/news/index.html") do |web_page|
  output = File.open("index.html", "w")
  while (line = web_page.gets)
    output.puts line
  end
  output.close
end

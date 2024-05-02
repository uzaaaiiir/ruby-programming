#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require "open-uri"

file_name = "index.html"
URI.open("https://pragprog.com/news/#{file_name}") do |web_page|
  output = File.open(file_name, "w")
  begin
    while (line = web_page.gets)
      output.puts line
    end
    output.close
  rescue StandardError
    $stderr.warn "Failed to download #{file_name}: #{$!}"
    output.close
    File.delete(file_name)
    raise
  end
end

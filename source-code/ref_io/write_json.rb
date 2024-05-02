#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require "json"
data = {name: "dave", address: %w[tx usa], age: 17}
serialized = data.to_json
serialized # !to_s!
File.open("data.json", "w") { |f| f.puts serialized } # !sh!

#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require "optparse"

parser = OptionParser.new

sort_type = nil
parser.on("-a", "Alphabetical") do
  sort_type = :alphabetical
end

parser.on("--recent", "Most Recent") do
  sort_type = :recency
end

parser.on("-s", "--size", "Size") do
  sort_type = :size
end

parser.parse!

p "we are sorting by #{sort_type}"

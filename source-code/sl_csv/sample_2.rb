#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require "csv"
csv = CSV.new($stdout, col_sep: "|")
csv << [1, "line 1", 27]
csv << [2, nil, 123]
csv << [3, "|bar|", 32.5]
csv.close

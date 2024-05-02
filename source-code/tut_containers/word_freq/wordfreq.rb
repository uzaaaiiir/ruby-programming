#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require_relative "words_from_string"
require_relative "count_frequency"

raw_text = $stdin.read
word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
p counts

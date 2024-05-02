require_relative "vowel_finder" #!sh!
#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---

module Summable
  def sum
    reduce(:+)
  end
end

class Array
  include Summable
end

class Range
  include Summable
end

class VowelFinder
  include Summable
end

puts [1, 2, 3, 4, 5].sum
puts ("a".."m").sum

vf = VowelFinder.new("the quick brown fox jumped")
puts vf.sum

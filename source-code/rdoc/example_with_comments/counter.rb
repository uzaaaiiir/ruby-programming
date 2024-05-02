#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
# Implements a simple accumulator, whose
# value is accessed via the attribute
# _counter_. Calling the method Counter#inc
# increments this value.
class Counter
  # The current value of the count
  attr_reader :counter

  # create a new Counter with the given
  # initial value
  def initialize(initial_value = 0)
    @counter = initial_value
  end

  # increment the current value of the count
  def inc
    @counter += 1
  end
end

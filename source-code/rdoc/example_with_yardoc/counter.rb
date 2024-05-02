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
# @author Dave Thomas
# @note This is only a minimal example
# @version 1.0
class Counter
  # The current value of the count
  attr_reader :counter

  # create a new Counter with the given
  # initial value
  # @param initial_value [Integer] the initial value of the counter
  def initialize(initial_value = 0)
    @counter = initial_value
  end

  # increment the current value of the count
  # @example Increment the counter
  #   Counter.new.increment #=> counter.value == 1
  # @return [Integer] The new value of the counter
  def inc
    @counter += 1
  end
end

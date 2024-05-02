#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
class Currier
  def add_four_things(a, b, c, d)
    a + b + c + d
  end
end

currier = Currier.new
add_two_things = currier.method(:add_four_things).curry.call(1, 2)
add_two_things.call(3, 4)

add_one_thing = add_two_things.call(5)
add_one_thing.call(7)

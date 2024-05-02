#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
class Consumer
  def takes_args(a, b, c)
    p "#{a} #{b} #{c}"
  end

  def takes_keys(a:, b:, c:)
    p "#{a} #{b} #{c}"
  end
end

class NotAnArrayOrAHash
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def to_a
    [@a, @b, @c]
  end

  def to_hash
    {a: @a, b: @b, c: @c}
  end
end

obj = NotAnArrayOrAHash.new(1, 2, 3)
c = Consumer.new
c.takes_args(*obj)
c.takes_keys(**obj)

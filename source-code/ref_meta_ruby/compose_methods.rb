#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
class Foo
  def triple(x)
    x + x + x
  end
end

squarer = proc { |x| x * x }
foo_instance = Foo.new
method = foo_instance.method(:triple)

pointing_left = (method << squarer)
pointing_right = (method >> squarer)

pointing_left.call(5)
pointing_right.call(5)

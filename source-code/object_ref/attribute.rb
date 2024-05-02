#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
class Demo
  attr_reader :attr

  def attr=(val)
    @attr = val
    "return value"
  end
end

d = Demo.new #!sh!

# In all these cases, @attr is set to 99
d.attr = 99
d.attr=(99)
d.send(:attr=, 99)

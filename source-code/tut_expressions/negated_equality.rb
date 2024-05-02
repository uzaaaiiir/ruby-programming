#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
class Type
  def ==(other)
    puts "Comparing self == #{other}"
    other == "value"
  end

  def !=(other)
    puts "Comparing self != #{other}"
    other != "value"
  end
end

t = Type.new
p(t == "value")
p(t != "value")

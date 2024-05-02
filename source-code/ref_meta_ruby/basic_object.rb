#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
class SimpleBuilder < BasicObject
  def initialize
    @indent = 0
  end

  def __indented_puts__(string)
    ::Kernel.puts "#{" " * @indent} #{string}"
  end

  def respond_to_missing?
    true
  end

  def method_missing(name, *args)
    __indented_puts__("<#{name}>")
    @indent += 2
    __indented_puts__(args.join) unless args.empty?
    yield if ::Kernel.block_given?
    @indent -= 2
    __indented_puts__("</#{name}>")
  end
end

r = SimpleBuilder.new
r.person do
  r.name("Dave")
  r.address do
    r.street("123 Main")
    r.city("Pleasantville")
  end
end

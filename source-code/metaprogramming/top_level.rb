#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
def be_polite
  "Why, if it isn't #{self.to_s}? So glad to see you."
end

class Person
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def to_s = "#{first_name} #{last_name}"

  def introduce
    be_polite
  end
end

clark = Person.new("Clark", "Kent")
p clark.introduce

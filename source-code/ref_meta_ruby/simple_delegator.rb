#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require 'delegate'

class User
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

class SortableUser < SimpleDelegator
  def sort_name
    "#{last_name}, #{first_name}"
  end
end

fozzie = User.new("Fozzie", "Bear")
sortable_user = SortableUser.new(fozzie)

p sortable_user.first_name
p sortable_user.sort_name

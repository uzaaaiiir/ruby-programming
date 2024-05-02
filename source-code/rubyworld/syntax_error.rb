#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
class HasAnError
  def this_method_ends
    p "it sure does"
  end

  def this_doesnt_end 
    return "a thing"
  
  def this_one_is_also_right 
    p "fine" 
  end
end
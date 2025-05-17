# ------------------------------------------
# Variables
# ------------------------------------------
# To create data that we can reference later, we use variables. 
# Every variable in Ruby is an object, and you can call methods on them. 
# For example, a string object can have methods like upcase, length, reverse, etc.
# ------------------------------------------


# ------------------------------------------
# Method Calls
# ------------------------------------------
# Every variable is an object in Ruby, which means we can call methods on them.
# - Dot notation is used to call methods on the object. 
# - Method receivers are on the left side, and the method name is on the right side.
# - Methods can be chained, can have no arguments, or have arguments.
#
# Method Types:
# - If a method ends in !, it is a destructive method, which means it will mutate the original object.
# - If a method ends in ?, it is a predicate method, which means it will return a boolean value (true/false).
# 
# Can see the methods for an object by going to the docs: https://ruby-doc.org
# Can also use a terminal window and type: ri <object> <method>
# ------------------------------------------

title = "Goonies"
puts title.upcase!                   # => "GOONIES"
puts title.empty?                    # => false
puts title.capitalize.ljust(20, ".") # => "Goonies........."

rank = 8
puts rank.to_s  # => "8"
puts rank.to_f  # => 8.0
puts rank * 2   # Same as rank.*(2)
puts rank.even? # => true
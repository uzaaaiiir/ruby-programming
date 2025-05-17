# ------------------------------------------
# self
# ------------------------------------------
# Methods are always called on an object, even if you don't see it.
# - Example: In title.capitalize, title is a receiver, and capitalize is a method. 
# 
# puts is called without a receiver, but in reality it is called on self.
# - self is the object that is calling the method.
# - So puts actually implicitly calls self.puts
# ------------------------------------------
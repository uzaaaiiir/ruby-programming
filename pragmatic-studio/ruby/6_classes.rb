# ==========================================
# Ruby Classes and Objects
# ==========================================

# ------------------------------------------
# Understanding Classes and Objects
# ------------------------------------------
# Classes are blueprints for creating objects (instances) in Ruby.
#
# Key Concepts:
# - Classes define both attributes (data) and methods (behavior)
# - Each instance has its own state (attribute values)
# - All instances share the same methods defined in the class
#
# Class Definition and Instantiation:
# - Use the 'class' keyword to define a class
# - The 'initialize' method is called when creating a new instance
# - Instance variables (@variable) store object state
# - Default parameter values can be specified in initialize
#
# Object Inspection:
# - puts object      -> Shows object's memory address, unless we override the to_s method for the object.
# - puts object.inspect -> Shows detailed object information
#
# Method Types:
# - Instance Methods: Called on instances (object.method)
# - Class Methods: Called on the class itself (Class.method)

# ------------------------------------------
# Example: Movie Class Implementation
# ------------------------------------------
# This class demonstrates:
# - Instance variable usage
# - Method definition
# - Default parameter values
# - Object state modification
class Movie 
  def initialize(title, rank = 5) 
    @title = title.capitalize  # Store and format the title
    @rank = rank              # Store the rank with default value
  end

  # Instance methods that modify object state
  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  # Instance method that returns formatted information
  # Short methods can be defined on one line, called endless methods.
  def info = "#{@title} has a rank of #{@rank}."

  # When we call puts on an instance, it will call the to_s method.
  # We can override the to_s method to return a string representation of the object.
  def to_s
    "#{@title} has a rank of #{@rank}."
  end
end 

# ------------------------------------------
# Creating and Using Movie Instances
# ------------------------------------------
# Example 1: Creating a movie with custom rank
movie_1 = Movie.new("goonies", 10)
puts movie_1           # Shows memory address
puts movie_1.inspect   # Shows detailed object info
puts movie_1.info      # Shows formatted movie info
movie_1.thumbs_up      # Increases rank
puts movie_1.info      # Shows updated info

# Example 2: Another movie instance
movie_2 = Movie.new("ghostbusters", 9)
puts movie_2.inspect
puts movie_2.info
movie_2.thumbs_down    # Decreases rank
puts movie_2.info

# Example 3: Using default rank value
movie_3 = Movie.new("goldfinger")  # Uses default rank of 5
puts movie_3.inspect
puts movie_3.info
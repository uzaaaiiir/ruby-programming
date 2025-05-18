# ==========================================
# Ruby Class Attributes
# ==========================================

# ------------------------------------------
# Understanding Class Attributes
# ------------------------------------------
# Instance methods have access to instance variables, 
# but we don't have access outside the class.
#
# We can use attributes to make instance variables accessible outside the class.
#
# Attributes are defined using the attr_reader, attr_writer, and attr_accessor methods.
# - attr_reader allows us to read the value of an instance variable.
# - attr_writer allows us to write the value of an instance variable.
# - attr_accessor allows us to read and write to an instance variable.
#
# Getter: attr_reader :title, :rank
# Setter: attr_writer :title, :rank
# Getter and Setter: attr_accessor :title, :rank
# 
# Virtual Attributes are attributes that are not stored in the database. It derives its value from other attributes. 
# - They don't need to be explicitly defined as an instance variable, because they are derived from other attributes.


class Movie 
  attr_reader :rank
  attr_accessor :title

  def initialize(title, rank = 5) 
    @title = title.capitalize  # Store and format the title
    @rank = rank              # Store the rank with default value
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  # Example of a reader method
  def title
    @title
  end

  # Example of a writer method
  def title=(new_title)
    @title = new_title.capitalize
  end

  def info = "#{@title} has a rank of #{@rank}."

  def to_s
    "#{@title} has a rank of #{@rank}."
  end
end 

movie_1 = Movie.new("The matrix", 10)
movie_1.title = "helloo"   # Same as calling def title=(new_title)
puts movie_1
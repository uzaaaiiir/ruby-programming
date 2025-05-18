# ==========================================
# Ruby Methods
# ==========================================

# ------------------------------------------
# Method Definition and Usage
# ------------------------------------------
# Methods are reusable blocks of code that can be called multiple times.
#
# Key Points:
# - Defined using the 'def' keyword
# - Can accept parameters
# - Return the last evaluated expression by default
# - Parameters are scoped to the method 
# - Parameters can specify default values in the method signature (example: def x(value = 5))
# - Parameters can be passed as named/keyword parameters (example:def x(value:))
#
# Method Calling:
# - Methods can be called on 'self' explicitly or implicitly
# - When not in a class, 'self' is the default receiver
# 
# Short - one line methods
# - If the method is one line, we can use a one line method.
# - Example: def x(value) = value * 2

# ------------------------------------------
# Example: Movie Info Method
# ------------------------------------------
def emojis(emoji = "🐴" , number)
  emoji * number
end

def movie_info(title, rank = title.length)
  stars = emojis("⭐", rank)
  "#{title} has a rank of #{rank}: #{stars}."
end

# Method calls - both syntaxes are equivalent
puts self.movie_info("Goonies", 10)  # Explicit self
puts movie_info("Poop", 10)          # Implicit self

# Method with default parameters
movie_title = "goldfinger"
movie_rank = 7
puts movie_info(movie_title, movie_rank)
puts movie_info(movie_title)

# Keyword/Named Parameters
def movie_info_with_named_parameters(title:, rank: title.length)
  stars = "⭐" * rank
  "#{title} has a rank of #{rank}: #{stars}."
end

puts movie_info_with_named_parameters(title: "Dora", rank: 5)
puts movie_info_with_named_parameters(title: "Dora")
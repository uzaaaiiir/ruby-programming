# ==========================================
# Ruby Numbers and Strings
# ==========================================

# ------------------------------------------
# Number Types in Ruby
# ------------------------------------------
# 1. Integers: Whole numbers (e.g., 7)
# 2. Floating point numbers: Numbers with decimal points (e.g., 7.5)
# ------------------------------------------
puts 7.class    # => Integer
puts 7.0.class  # => Float

# ------------------------------------------
# Math Operations Examples
# ------------------------------------------
puts 7 * 2    # 14
puts 7 * 3.14 # 21.98
puts 7 / 2    # Returns 3 because both are integers
puts 7 / 3.0  # Returns 2.3333333333333335 because 3.0 is a floating point number

# ------------------------------------------
# Basic String Examples
# ------------------------------------------
puts "Goonies has a rank of 10."
puts "Mikey's favorite move is Goonies.\nHe gives it a 10!"
puts 'Mikey\'s favorite move is Goonies.\nHe gives it a 10!'

# ------------------------------------------
# String Interpolation
# ------------------------------------------
# String interpolation allows us to embed expressions within string literals
# using the #{expression} syntax.
#
# Important notes:
# - Use double quotes for string interpolation and escape characters
# - Use single quotes for regular strings without interpolation
title = 'Ghostbusters'
rank = 9
puts "#{title} has a rank of #{rank}."
puts "Mikey's favorite move is #{title}.\nHe gives it a #{rank}"

# ------------------------------------------
# Variable Naming Conventions
# ------------------------------------------
# 1. Can be a mix of letters, numbers, and understores
# 2. First character must be a lowercase letter or an underscore. 
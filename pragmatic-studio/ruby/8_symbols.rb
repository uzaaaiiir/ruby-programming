# ==========================================
# Ruby Symbols
# ==========================================

# ------------------------------------------
# Symbols
# ------------------------------------------
# Symbols are immutable strings.
# - They are used to represent names and identifiers.
# - They are defined using a colon (:) syntax.
# - Symbols always reference the same object in memory and have the same object_id. In contrast, strings are mutable, and are redefined in memory every time they are used. 
# Strings are not equal to symbols.

puts "hello".object_id
puts "hello".object_id

puts :hello.object_id
puts :hello.object_id

puts "hello" == :hello
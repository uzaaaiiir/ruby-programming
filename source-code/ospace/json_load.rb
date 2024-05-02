#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require "json"

class Special
  def initialize(valuable, volatile, precious)
    @valuable = valuable
    @volatile = volatile
    @precious = precious
  end

  def self.from_json(json_string)
    result = JSON.parse(json_string)
    Special.new(result["valuable"], nil, result["precious"])
  end

  def to_json
    JSON.dump(
      {
        precious: @precious,
        valuable: @valuable
      }
    )
  end

  def to_s
    "#{@valuable} #{@volatile} #{@precious}"
  end
end

obj = Special.new("Hello", "there", "World")

puts "Before: obj = #{obj}"
data = obj.to_json
new_obj = Special.from_json(data)
puts "After: obj = #{new_obj}"

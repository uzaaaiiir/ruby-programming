#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
Dir.children("testdir")
Dir.entries("testdir")

result = []
Dir.each_child("testdir") { |name| result << name }
result

instance = Dir.new("testdir")
instance.children
instance_result = []
instance.each { |name| instance_result << name }
instance_result

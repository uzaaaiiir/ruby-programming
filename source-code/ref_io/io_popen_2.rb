#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
pipe = IO.popen(["bc", {$stderr => $stdout}], "r+")
pipe.puts "1 + 3; bad_function()"
pipe.close_write
puts pipe.readlines

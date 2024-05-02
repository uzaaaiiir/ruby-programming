#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
trap("CLD") do
  pid = Process.wait
  puts "Child pid #{pid}: terminated"
  File.delete("output.txt")
  exit
end

spawn("sort testfile > output.txt")

# Do other stuff...
sleep(0.2)

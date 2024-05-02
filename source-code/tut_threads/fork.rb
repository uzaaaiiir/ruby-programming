#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
new_pipe = IO.popen("-","w+")
if new_pipe
  new_pipe.puts "Get a job!"
  $stderr.puts "I'm the parent, the child said to me '#{new_pipe.gets.chomp}'"
else
  $stderr.puts "I'm the child, the parent said to me '#{gets.chomp}'"
  puts "OK"
end

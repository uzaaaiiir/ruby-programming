#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
def write_a_thing(arg)
  print "print\n"
  print arg
  print "\n---\n"
  print "\n"

  print "p\n"
  p arg
  print "\n---\n"

  print "puts\n"
  puts arg
  print "\n---\n"

  print "pp\n"
  pp arg
  print "\n---\n"

  print "jj\n"
  jj arg
  print "\n---\n"

  print "y\n"
  y arg
  print "\n---\n"

  print "ap\n"
  ap arg
  print "\n---\n"
end

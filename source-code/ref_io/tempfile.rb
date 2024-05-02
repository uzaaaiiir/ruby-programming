#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require "tempfile"
tf = Tempfile.new("afile")
tf.path
tf.puts("Cosi Fan Tutte") # !sh!
tf.close # !sh!
tf.open # !sh!
tf.gets
tf.close(true) # !sh!
tf.unlink

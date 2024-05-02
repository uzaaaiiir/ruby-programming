#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require 'optparse'
parser = OptionParser.new
parser.on('-x', '--xxx', 'Short and long, no argument')
parser.on('-yYYY', '--yyy', 'Short and long, required argument')
parser.on('-z [ZZZ]', '--zzz', 'Short and long, optional argument')
options = {}
parser.parse!(into: options)
p options

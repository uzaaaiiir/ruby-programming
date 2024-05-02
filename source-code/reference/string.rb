#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
[
  ["?a", "ASCII character"],
  ['?\n', "newline (0x0a)"],
  ['?\C-a', "control a (0x65 &amp; 0x9f) == 0x01"],
  ['?\M-a', "meta sets bit 7"],
  ['?\M-\C-a', "meta and control a"],
  ['?\C-?', "delete character"]
].each do |code, desc|
  puts "<row>"
  str = eval(code)
  print "<col><p><ic>#{code}</ic></p></col>"
  print "<col><p><ic>#{str.inspect[1..-2]}</ic></p></col>"
  puts "<col>#{desc}</col>"
  puts "</row>"
end

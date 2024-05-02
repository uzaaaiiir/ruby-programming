#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
# frozen_string_literal: true
column_count = 9
to_take = column_count - 1 # allow for __ENCODING__
span = ' span="2"'

column_count.times do |i|
  puts %{<colspec col="#{i + 1}" font-family="sans" font-size="82%" width="11%" />}
end

names = [
  "__ENCODING__",
  "__FILE__",
  "__LINE__",
  "BEGIN",
  "END",
  "alias",
  "and",
  "begin",
  "break",
  "case",
  "class",
  "def",
  "defined?",
  "do",
  "else",
  "elsif",
  "end",
  "ensure",
  "false",
  "for",
  "if",
  "in",
  "module",
  "next",
  "nil",
  "not",
  "or",
  "redo",
  "rescue",
  "retry",
  "return",
  "self",
  "super",
  "then",
  "true",
  "undef",
  "unless",
  "until",
  "when",
  "while",
  "yield"
]

until names.empty?
  row = names.slice!(0, to_take)
  to_take = column_count

  puts "<row>"
  row.each do |col|
    puts %{<col#{span}>#{col}</col>}
    span = ''
  end
  puts "</row>"
end

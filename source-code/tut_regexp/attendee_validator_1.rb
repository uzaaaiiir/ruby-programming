#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
re = %r{
  (?:(?<title>Mrs | Mr | Ms | Dr )\s)? (.*?)
  \s and \s
  (\g<title>\s)? (.+)
}x
match_data = re.match("Mr Bond and Ms Monneypenny")
match_data[0]
match_data[:title]

second_match = re.match("Samson and Delilah")
second_match[0]
second_match[:title]

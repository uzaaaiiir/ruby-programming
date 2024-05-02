#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
NAMES = [
  "Mr Jones and Sally",
  "Mr Bond and Ms Moneypenny",
  "Samson and Delilah",
  "Dr Jekyll and himself",
  "Ms Hinky Smith and Ms Jones",
  "Dr Wood and Mrs Wood",
  "Thelma and Louise"
]

NAMES.each do |line|
  re = %r{ ^(?>
             (?:(?<title>Mrs | Mr | Ms | Dr )\s)? (.*?) \s and \s
          )
             (?(<title>)\g<title>\s) (.+)
        }x
  if line.match?(re)
    puts("VALID:   #{line}")
  else
    puts("INVALID: #{line}")
  end
end

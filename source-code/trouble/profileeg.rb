#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
count = 0
words = File.open("/usr/share/dict/words")

while (word = words.gets)
  word = word.chomp!
  if word.length == 12
    count += 1
  end
end

puts "#{count} twelve-character words"

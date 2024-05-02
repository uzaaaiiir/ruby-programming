#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
class Regexp
  OPTION_MAP = {IGNORECASE => "i", EXTENDED => "x", MULTILINE => "m"}

  def option_string
    option_bits = options
    OPTION_MAP.map do |bit, string|
      ((option_bits & bit) > 0) ? string : nil
    end.compact.join
  end
end

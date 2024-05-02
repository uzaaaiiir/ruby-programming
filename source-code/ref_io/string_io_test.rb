#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require "stringio"
require "csv"
require "minitest/autorun"

class TestCSV < Minitest::Test
  def test_simple
    StringIO.open do |op|
      CSV(op) do |csv|
        csv << [1, "line 1", 27]
        csv << [2, nil, 123]
      end
      assert_equal("1,line 1,27\n2,,123\n", op.string)
    end
  end
end

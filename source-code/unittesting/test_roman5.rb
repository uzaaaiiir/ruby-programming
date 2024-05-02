#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require_relative "roman3"
require "minitest/autorun"

class TestRoman < Minitest::Test
  def assert_roman_value(roman_numeral, arabic_numeral)
    assert_equal(roman_numeral, Roman.new(arabic_numeral).to_s)
  end

  def test_simple
    assert_roman_value("i", 1)
    assert_roman_value("ii", 2)
    assert_roman_value("iii", 3)
    assert_roman_value("iv", 4)
    assert_roman_value("ix", 9)
  end

  def test_range
    # no exception for these two...
    Roman.new(1)
    Roman.new(4999)
    # but an exception for these
    assert_raises(RuntimeError) { Roman.new(0) }
    assert_raises(RuntimeError) { Roman.new(5000) }
  end
end

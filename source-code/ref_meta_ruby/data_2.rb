#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
LightBulb = Data.define(:brightness, :watts, :color)
cool_bulb = LightBulb.new(1600, 15, 4000)
warmer_bulb = cool_bulb.with(color: 2700)

cool_bulb.to_h
warmer_bulb.to_h

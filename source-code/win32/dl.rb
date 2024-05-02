#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require "fiddle"

user32 = Fiddle.dlopen("user32.dll")
msgbox = Fiddle::Function.new(
  user32["MessageBoxA"],
  [Fiddle::TYPE_LONG, Fiddle::TYPE_VOIDP, Fiddle::TYPE_VOIDP, Fiddle::TYPE_INT],
  Fiddle::TYPE_INT
)
MB_OKCANCEL = 1
msgbox.call(0, "OK?", "Please Confirm", MB_OKCANCEL)

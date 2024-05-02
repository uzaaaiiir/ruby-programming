#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
same   = "12:15-12:45"
differ = "12:45-13:15"

 # use numbered backreference
same   =~ /(\d\d):\d\d-\1:\d\d/
differ =~ /(\d\d):\d\d-\1:\d\d/

 # use named backreference
same   =~ /(?<hour>\d\d):\d\d-\k<hour>:\d\d/
differ =~ /(?<hour>\d\d):\d\d-\k<hour>:\d\d/
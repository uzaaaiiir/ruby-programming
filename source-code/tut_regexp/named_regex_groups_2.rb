#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
  /(?<hour>\d\d):(?<min>\d\d)(..)/ =~ "12:50am"
  "Hour is #{hour}, minute #{min}"

  # You can mix named and position-based references
  "Hour is #{hour}, minute #{$2}"
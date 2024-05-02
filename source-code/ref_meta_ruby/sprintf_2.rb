#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
sprintf("%<number>d %04<number>x", number: 123)
sprintf("%08<number>b '%5{number}'", number: 123)
sprintf("%6<k>s: %<v>s", k: "Dave", v: "Ruby")
sprintf("%6{k}: %{v}", k: "Dave", v: "Ruby")

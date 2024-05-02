#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
def pick_a_card(cards)
  case cards
  in [*, {rank: "Ace", suit: String => s}, *]
    "You have an Ace! Its suit is #{s}."
  in [*, {rank: r, suit: "Diamonds"}, *]
    "You have a Diamond! Its rank is #{r}."
  in [*, {rank: "Queen", suit:}, *]
    "You have a Queen! Its suit is #{suit}."
  else
    "You have no interesting cards,"
  end
end

puts pick_a_card([
  {rank: "Ace", suit: "Hearts"},
  {rank: "King", suit: "Diamonds"},
  {rank: "Queen", suit: "Clubs"}
])

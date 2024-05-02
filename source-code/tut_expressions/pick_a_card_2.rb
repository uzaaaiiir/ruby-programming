#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
def pick_a_card(rank_to_look_for, suit_to_look_for, cards)
  case cards
  in [*, {rank: ^rank_to_look_for, suit:}, *]
    "You have a #{rank_to_look_for}! Its suit is #{suit}."
  in [*, {rank:, suit: ^suit_to_look_for}, *]
    "You have a {rank}! Its suit is #{suit_to_look_for}."
  else
    "You have no interesting cards,"
  end
end

puts pick_a_card("King", "Clubs", [
  {rank: "Ace", suit: "Hearts"},
  {rank: "King", suit: "Diamonds"},
  {rank: "Queen", suit: "Clubs"}
])

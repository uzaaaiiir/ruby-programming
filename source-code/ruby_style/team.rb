#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
class Team
  attr_accessor :wins, :losses, :draws

  def initialize(wins = 0, losses = 0, ties = 0)
    @wins = wins
    @losses = losses
    @ties = ties
  end

  def games = wins + losses + ties

  def win_percentage
    return 0.0 if games.zero?
    ((wins * 1.0) + (ties * 0.5)) / (wins + losses + ties)
  end

  def <=>(other)
    raise ArgumentError unless other.respond_to?(:win_percentage)
    win_percentage <=> other.win_percentage
  end
end

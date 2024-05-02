#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require_relative "tennis_scorer"

RSpec.describe(TennisScorer) do
  self.describe("basic scoring") do
    self.it("starts with a score of 0-0") do
      ts = TennisScorer.new
      self.expect(ts.score).to(self.eq("0-0"))
    end

    self.it("makes the score 15-0 if the server wins a point")
    self.it("makes the score 0-15 if the receiver wins a point")
    self.it("makes the score 15-15 after they both win a point")
  end
end

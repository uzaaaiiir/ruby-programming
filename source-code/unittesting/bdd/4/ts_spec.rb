#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require_relative "tennis_scorer"

RSpec.describe TennisScorer do
  describe "basic scoring" do
    before(:example) do
      @ts = TennisScorer.new
    end

    it "starts with a score of 0-0" do
      expect(@ts.score).to eq("0-0")
    end

    it "makes the score 15-0 if the server wins a point" do
      @ts.give_point_to(:server)
      expect(@ts.score).to eq("15-0")
    end

    it "raises an error if it doesn't know the player" do
      expect { @ts.give_point_to(:referee) }.to raise_error(RuntimeError)
    end

    it "makes the score 0-15 if the receiver wins a point" do
      @ts.give_point_to(:receiver)
      expect(@ts.score).to eq("0-15")
    end

    it "makes the score 15-15 after they both win a point" do
      @ts.give_point_to(:receiver)
      @ts.give_point_to(:server)
      expect(@ts.score).to eq("15-15")
    end
  end
end

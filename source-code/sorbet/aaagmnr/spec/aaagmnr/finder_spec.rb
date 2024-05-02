#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
module Aaagmnr
  RSpec.describe Finder do
    describe "signature" do
      subject(:finder) { Finder.new([]) }

      specify { expect(finder.signature_of("cat")).to eq("act") }
      specify { expect(finder.signature_of("act")).to eq("act") }
      specify { expect(finder.signature_of("wombat")).to eq("abmotw") }
    end

    describe "lookup" do
      subject(:finder) { Finder.new(["cat", "wombat"]) }

      it "returns the word if the word is given" do
        expect(finder.lookup("cat")).to eq(["cat"])
      end

      it "returns the word if an anagram is given" do
        expect(finder.lookup("act")).to eq(["cat"])
        expect(finder.lookup("tca")).to eq(["cat"])
      end

      it "returns nil if no word matches the anagram" do
        expect(finder.lookup("wibble")).to be_nil
      end
    end
  end
end

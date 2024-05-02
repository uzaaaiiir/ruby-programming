#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
module Aaagmnr
  RSpec.describe Options do
    describe "without specifiying a dictionary" do
      it "returns the default dictionary" do
        opts = Options.new(["someword"])
        expect(opts.dictionary).to eq(Options::DEFAULT_DICTIONARY)
      end

      it "should retain specified words" do
        opts = Options.new(["word1", "word2"])
        expect(opts.words_to_find).to eq(["word1", "word2"])
      end
    end

    describe "when specifying a dictionary" do
      it "should be able to reference the specified dictionary" do
        opts = Options.new(["-d", "mydict", "someword"])
        expect(opts.dictionary).to eq("mydict")
      end

      it "should retain specified words" do
        opts = Options.new(["-d", "mydict", "word1", "word2"])
        expect(opts.words_to_find).to eq(["word1", "word2"])
      end
    end
  end
end

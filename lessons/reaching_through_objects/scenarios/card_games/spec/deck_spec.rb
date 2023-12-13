require "rspec"
require "./lib/card"
require "./lib/deck"

RSpec.describe Deck do
    before(:each) do
        @card_1 = Card.new("diamonds", "2")
        @card_2 = Card.new("spades", "10")
        @card_3 = Card.new("hearts", "A")
        @card_4 = Card.new("cubs", "Q")
        @card_5 = Card.new("spades", "6")
        @card_6 = Card.new("diamonds", "K")
        @card_7 = Card.new("spades", "3")
        @card_8 = Card.new("cubs", "8")
        @card_9 = Card.new("hearts", "4")
        @card_10 = Card.new("hearts", "10")
        @card_11 = Card.new("diamonds", "J")
        @cards_1 = [@card_1, @card_2, @card_3, @card_4, @card_5]
        @cards_2 = [@card_6, @card_7, @card_8, @card_9, @card_10, @card_11]
        # require 'pry'; binding.pry
        @deck_1 = Deck.new(@cards_1)
        @deck_1 = Deck.new(@cards_2)
        @deck_0 = Deck.new([@card_6, @card_2])
    end

    describe "#Initialize" do
        it "exists" do
            expect(@deck_1).to be_a Deck
            expect(@deck_2).to be_a Deck
        end
        it "can have more than 5 cards" do
            expect(@deck_1.count).to eq 5
            expect(@deck_2.count).to eq 6
        end
    end
end
require "rspec"
require "./lib/card"

RSpec.describe Card do

    before(:each) do
        @card_1 = Card.new("diamonds", 2)
    end

    describe "#Initialize" do
        it "can initialize with a suit and value" do
            expect(@card_1).to be_a Card
            expect(@card_1.suite).to eq("diamonds")
            expect(@card_1.value).to eq(2)
        end

    end
    
end
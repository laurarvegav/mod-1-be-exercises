require "rspec"
require "./lib/potluck"

RSpec.describe Potluck do

    it "exists" do
        potluck = Potluck.new("7-13-18")
        expect(potluck).to be_an_instance_of(Potluck)
    end

    it "stores a date" do
        potluck = Potluck.new("7-13-18")
        expect(potluck.date).to eq ("7-13-18")
    end

    it "starts with no dishes" do
        potluck = Potluck.new("7-13-18")
        expect(potluck.dishes).to eq ([])
    end
end
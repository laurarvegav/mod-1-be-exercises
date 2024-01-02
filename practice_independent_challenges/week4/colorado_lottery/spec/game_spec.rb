require "rspec"
require "./lib/game"

RSpec.describe Game do

    it "has a name and cost" do
        mega_millions = Game.new('Mega Millions', 5, true)
        expect(mega_millions.name).to eq("Mega Millions")
        expect(mega_millions.cost).to eq(5)
    end
    
    it "is not a national drawing by default" do
        pick_4 = Game.new('Pick 4', 2)
        mega_millions = Game.new('Mega Millions', 5, true)
        expect(mega_millions.national_drawing?).to be true
        expect(pick_4.national_drawing?).to be false
    end

end

require "rspec"
require "./lib/contestant"
require "./lib/game"

# frozen_string_literal: true
RSpec.describe Contestant do

    it "has a name, age, state of residence and spending money" do
        pick_4 = Game.new('Pick 4', 2)
        mega_millions = Game.new('Mega Millions', 5, true)
        alexander = Contestant.new({first_name: 'Alexander',
                                    last_name: 'Aigiades',
                                    age: 28,
                                    state_of_residence: 'CO',
                                    spending_money: 10})
        
        expect(alexander.full_name).to eq("Alexander Aigiades")
        expect(alexander.age).to eq(28)
        expect(alexander.state_of_residence).to eq("CO")
        expect(alexander.spending_money).to eq(10)
        expect(alexander.out_of_state?).to be false
    end

    it "has no games of interest by default" do
        pick_4 = Game.new('Pick 4', 2)
        mega_millions = Game.new('Mega Millions', 5, true)
        alexander = Contestant.new({first_name: 'Alexander',
                                    last_name: 'Aigiades',
                                    age: 28,
                                    state_of_residence: 'CO',
                                    spending_money: 10})
        
        expect(alexander.game_interests).to eq([])
    end

    it "evaluates if contestant is out of the state" do
        alexander = Contestant.new({first_name: 'Alexander',
        last_name: 'Aigiades',
        age: 28,
        state_of_residence: 'CO',
        spending_money: 10})
    
        expect(alexander.out_of_state?).to be false
    end

    it "can add games of interest" do
        pick_4 = Game.new('Pick 4', 2)
        mega_millions = Game.new('Mega Millions', 5, true)
        alexander = Contestant.new({first_name: 'Alexander',
                                    last_name: 'Aigiades',
                                    age: 28,
                                    state_of_residence: 'CO',
                                    spending_money: 10})
        alexander.add_game_interest('Mega Millions')
        alexander.add_game_interest('Pick 4')

        expect(alexander.game_interests).to eq(["Mega Millions", "Pick 4"])
    end
end

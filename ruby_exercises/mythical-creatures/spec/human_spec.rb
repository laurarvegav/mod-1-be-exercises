require './spec/spec_helper'
require './lib/human'

RSpec.describe Human do
    it 'has a default name' do
        human = Human.new
        expect(human.name).to eq('Jane')
    end
    
    it 'can have a different name if given' do 
        human_1 = Human.new
        expect(human_1.name).to eq('Jane')
        human_2 = Human.new('Mark')
        expect(human_2.name).to eq('Mark')
    end

    it 'starts without encountering any creature' do
        human_1 = Human.new
        expect(human_1.encounter_counter).to eq(0)
    end

    it 'starts without being knocked out' do
        human_1 = Human.new
        expect(human_1.knocked_out).to be false
    end

    it 'can increase the encounter counter' do
        human = Human.new
        
        human.increase_encounters
        expect(human.encounter_counter).to eq(1)

        human.increase_encounters
        human.increase_encounters
        expect(human.encounter_counter).to eq(3)
    end

    it 'notices an ogre after the third encounter' do
        human = Human.new
        
        human.increase_encounters
        expect(human.encounter_counter).to eq(1)
        expect(human.notices_ogre?).to be false

        human.increase_encounters
        expect(human.notices_ogre?).to be false

        human.increase_encounters
        expect(human.encounter_counter).to eq(3)
        expect(human.notices_ogre?).to be true
    end

    it 'can be knocked out' do
        human = Human.new
        
        human.knock_unconscious
        expect(human.knocked_out?).to be true
    end

    it 'can revive' do
        human = Human.new
        
        human.knock_unconscious
        expect(human.knocked_out?).to be true

        human.revive
        expect(human.knocked_out?).to be false

    end
end
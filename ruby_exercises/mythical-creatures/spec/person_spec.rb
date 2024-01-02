require 'rspec'
require './lib/person'

RSpec.describe Person do
    it 'can have a name if given' do 
        human_1 = Person.new('Jane')
        expect(human_1.name).to eq('Jane')
        human_2 = Person.new('Mark')
        expect(human_2.name).to eq('Mark')
    end

    it 'starts unestoned and can get stoned and unestoned' do
        human = Person.new('Jane')
        expect(human.stoned?).to be false

        human.stone
        expect(human.stoned?).to be true

        human.unstone
        expect(human.stoned?).to be false
    end
end
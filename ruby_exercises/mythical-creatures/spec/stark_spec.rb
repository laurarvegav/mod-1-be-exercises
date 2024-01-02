require 'rspec'
require './lib/stark'

RSpec.describe Stark do
    it 'can have a name if given' do 
        stark_1 = Stark.new('Jane')
        expect(stark_1.name).to eq('Jane')
    end

    it 'is in Winterfell by default' do
        stark = Stark.new('Bran')
    
        expect(stark.location).to eq('Winterfell')
    end

    it 'is unsafe by default' do
        stark = Stark.new('Jon', 'The Wall')
    
        expect(stark.safe?).to be false
        expect(stark.house_words).to eq('Winter is Coming')
    end
end
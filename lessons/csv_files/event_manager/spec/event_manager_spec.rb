# ./lib/event_manager.rb

require './lib/event_manager'
require './lib/attendee'

RSpec.describe EventManager do

    it 'exists' do
        event = EventManager.new

        expect(event).to be_an EventManager
        expect(event).to be_an Array
    end
    it 'has ID number' do

    end
end
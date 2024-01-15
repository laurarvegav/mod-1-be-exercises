require './lib/activity'
require 'rspec'

RSpec.describe Activity do
  before do
    @activity = Activity.new("Brunch")
  end
    describe '#initialize' do
      it 'exists' do
        
        expect(@activity).to be_a(Activity)
      end

      it 'has attributes' do
        
        expect(@activity.name).to eq("Brunch")

        expect(@activity.participants).to eq({})

        expect(@activity.total_cost).to eq(0)
      end
    end

    describe '#add_participant' do
      it 'can add participants and return the updated hash' do
        @activity.add_participant("Maria", 20)

        expect(@activity.participants).to eq({"Maria" => 20})

        @activity.add_participant("Luther", 40)

        expect(@activity.participants).to eq({"Maria" => 20, "Luther" => 40})
      end

      it 'updates the total_cost' do
        @activity.add_participant("Maria", 20)

        expect(@activity.total_cost).to eq(20)

        @activity.add_participant("Luther", 40)

        expect(@activity.total_cost).to eq(60)
      end
    end
    

end
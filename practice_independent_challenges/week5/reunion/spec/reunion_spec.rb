require './lib/reunion'
# require './lib/activity'
require 'rspec'

RSpec.describe Reunion do
    before do
        @reunion = Reunion.new("1406 BE")
        @activity_1 = Activity.new("Brunch")
        @activity_2 = Activity.new("Bar")
    end
    describe "#initialize" do
        it "exists" do
            
            expect(@reunion).to be_a(Reunion)
        end

        it "has attrinutes" do

            expect(@reunion.name).to eq("1406 BE")

            expect(@reunion.activities).to eq([])
        end
    end

    describe "#add_activity" do
        it "can add activities and return updated array" do
            @reunion.add_activity(@activity_1)

            expect(@reunion.activities).to eq([@activity_1])
        end
    end

    describe "#total_cost" do
        it "can tell us the total cost of the event." do

        end
    end

    describe "#participants" do
        it "can tell us each participant's name and what they owe for the whole reunion. This should be the combination of what they owe from all activities." do
            @activity_1.add_participant("Maria", 20)
            @activity_1.add_participant("Luther", 40)
            @activity_2.add_participant("Luis", 50)
            @activity_2.add_participant("Gerard", 60)
            @activity_2.add_participant("Luther", 40)
            @reunion.add_activity(@activity_1)

            expect(@reunion.participants).to eq({"Maria" => 10, "Luther" => -10})

            @reunion.add_activity(@activity_2)

            expect(@reunion.participants).to eq({"Maria" => 10, "Luther" => 0, "Luis" => 0, "Gerard" => -10})
        end
    end

    describe "#owed_summary" do
        it "Each Reunion can print a summary of each participant's name and what they owe, separated by a line break." do
            @activity_1.add_participant("Maria", 20)
            @activity_1.add_participant("Luther", 40)
            @activity_2.add_participant("Luis", 50)
            @activity_2.add_participant("Gerard", 60)
            @activity_2.add_participant("Luther", 40)
            @reunion.add_activity(@activity_1)

            expect(@reunion.owed_summary).to eq("Maria owes $10 /nLuther is owed $10 ")

            @reunion.add_activity(@activity_2)

            expect(@reunion.owed_summary).to eq("Maria owes $10 /nLuther owes $0 /nLuis owes $0 /nGerard is owed $10 ")
        end
    end
end
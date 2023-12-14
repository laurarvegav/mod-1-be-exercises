require "rspec"
require "./lib/player"
require"./lib/team"

RSpec.describe Team do
    it "exists" do
        team = Team.new("France")

        expect(team).to be_a(Team)
        expect(team.country).to eq("France")
        expect(team.players).to eq([])
    end
    
    it "can return correct #eliminated? status" do
        team = Team.new("France")
    
        expect(team.eliminated?).to be(false)
        team.eliminated = true

        expect(team.eliminated?).to be(true)
    end

    it "can get players added to a team" do
        team = Team.new("France")
        mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
        pogba = Player.new({name: "Paul Pogba", position: "midfielder"})    
        team.add_player(mbappe)
        team.add_player(pogba)    

        expect(team.players).to eq([mbappe , pogba])
    end

    it "can return the players in certain position" do
        team = Team.new("France")
        mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
        pogba = Player.new({name: "Paul Pogba", position: "midfielder"})    
        team.add_player(mbappe)
        team.add_player(pogba)
        
        expect(team.players_by_position("midfielder")).to eq([pogba])
        expect(team.players_by_position("defender")).to eq ([])
    end




end
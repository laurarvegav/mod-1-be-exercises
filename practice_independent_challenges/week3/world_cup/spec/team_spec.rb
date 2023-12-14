require "rspec"
require "./lib/player"
require"./lib/team"

RSpec.describe Team do
    team = Team.new("France")

    expect(team.country).to eq("France")
    expect(team.eliminated?).to be(false)
    expect(team.players).to eq([])
    
end
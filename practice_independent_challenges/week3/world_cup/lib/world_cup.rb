class WorldCup 
    attr_reader :year,
                :teams

    def initialize(year, teams)
        @year = year
        @teams = teams
    end

    def active_players_by_position(position)
        positionees = []
        @teams.each do |team|
            if team.eliminated? == false
                positionees << team.players_by_position(position)
            end
        end
        positionees.flatten
    end

    def all_players_by_position
        players_by_pos = Hash.new({})
        @teams.each do |team|
            team.players.each do |player|
                if !players_by_pos.keys.include?(player.position)
                    players_by_pos[player.position.to_sym] = [player]
                end
            end
        end
        players_by_pos
    end

end
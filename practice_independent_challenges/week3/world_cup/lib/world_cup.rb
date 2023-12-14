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

    def all_positions 
        positions = []
        @teams.each do |team|
            team.players.each do |player|
                if !positions.include?(player.position)
                    positions << player.position
                end
            end
            positions
        end
        positions
    end

    def all_players_by_position
        players_by_pos = Hash.new([])

        all_positions.each do |position|
            players_by_pos[position.to_sym] = active_players_by_position(position)
        end
        players_by_pos
    end

end
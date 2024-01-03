class ColoradoLottery
    attr_reader :registered_contestants,
                :winners,
                :current_contestants

    def initialize
        @registered_contestants = {}
        @winners = []
        @current_contestants = {}
    end

    def can_register?(contestant, game)
        contestant.interested?(game) && 
        contestant.adult? && 
        contestant.spending_money >= game.cost
    end

    def register_contestant(contestant,game)
        if can_register?(contestant, game) 
            @registered_contestants[game] = []
            @registered_contestants[game] << contestant
            @current_contestants[game] = []
            @current_contestants[game] << contestant.full_name
            contestant.spending_money -= game.cost
        end
    end

    def draw_winners

    end
end
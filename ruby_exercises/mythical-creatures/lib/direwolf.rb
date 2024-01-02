class Direwolf
    attr_reader :name,
                :home,
                :size,
                :starks_to_protect
    
    def initialize(name, home = "Beyond the Wall", size = "Massive")
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
    end

    def protects(stark)
        if ((@starks_to_protect.size < 2) && (stark.location == @home))
            @starks_to_protect << stark
            stark.protected
        end
    end

    def hunts_white_walkers?
        @starks_to_protect == []
    end

    def leaves(stark)
        @starks_to_protect.delete(stark)
        stark.left
        stark
    end
end
class TrickOrTreater

    attr_reader   :bag
                    

    def initialize(costume)
        @costume = costume
        @bag = Bag.new
    end

    def dressed_up_as
        @costume.style
    end

    def has_candy?
        !@bag.empty?
    end

    def candy_count
        @bag.count
    end

    def eat(num=1)
        @bag.eat_candy(num)
    end
end
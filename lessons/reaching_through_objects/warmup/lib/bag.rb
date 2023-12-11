class Bag
    attr_reader :candies

    def initialize
        @candies = []
    end

    def empty?
        @candies.empty?
    end

    def count
        @candies.count
    end

    def add_candy(candy)
        @candies << candy
    end


    def contains?(candy_type)
        # OPTION1
        @candies.any? do |candy|
            candy.type == candy_type
        end

        # OPTION2
        # evaluation = false
        # @candies.each do |candy|
        #     if candy.type == candy_type
        #         evaluation = true
        #     end
        # end
        # evaluation
    end

    def eat_candy
        @candies.pop
    end

end
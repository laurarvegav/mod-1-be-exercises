class Dish
    attr_reader :name,
                :category

    def initialize (dish , category)
        @name = dish
        @category = category
    end

end
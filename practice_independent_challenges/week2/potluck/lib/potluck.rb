class Potluck
    attr_reader :date,
                :dishes

    def initialize (date)
        @date = date
        @dishes =[]
    end

    def add_dish(dish)
        @dishes << dish
    end

    def get_all_from_category(cat)
        
        @dishes.find_all do |dish|
            dish.category == cat
        end
    end
end
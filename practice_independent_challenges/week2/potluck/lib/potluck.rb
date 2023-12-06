class Potluck
    attr_reader :date,
                :dishes

    def initialize (date)
        @date = date
        @dishes =[]
        @menu = {}
    end

    def add_dish(dish)
        @dishes << dish
    end

    def get_all_from_category(cat)
        @dishes.find_all do |dish|
            dish.category == cat
        end
    end

    def get_names_from_category(cat)
        @dishes_from_category = []
        @dishes.each do |dish|
            if dish.category == cat
                @dishes_from_category << dish.name
            end
        end
        @dishes_from_category
    end

    def menu 
        @dishes.each do |dish|
            @menu[dish.category] = get_names_from_category(dish.category).sort
        end
        @menu
    end

    def ratio(cat)
        ((get_names_from_category(cat).count).to_f/(@dishes.count))*100
    end
end
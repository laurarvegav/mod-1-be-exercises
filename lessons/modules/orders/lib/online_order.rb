# ./online_order.rb

module OnlineOrder
    def confirmation(thing)
        "You got #{thing}."
    end
    
    def delivery (item, time_frame)
        "Your #{item} will arrive in #{time_frame}."
    end

    def review
        "Please rate your order within 30 days."
    end
end

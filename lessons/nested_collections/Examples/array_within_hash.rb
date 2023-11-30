pizza_toppings = {
  veggies: ["green peppers", "jalapeño", "mushrooms"],
  protein: ["pepperoni", "sausage", "sardines"],
  fruit: ["pineapple"]
}

# 1. what is pizza_toppings.count
puts pizza_toppings.count
# 2. what is pizza_toppings.values
puts pizza_toppings.values
# 3. how can I access the element “pineapple”
puts pizza_toppings.values[-1]
# 4. how can I add the element “olives” to the key “veggies”?
pizza_toppings[:veggies].push("olives")
puts pizza_toppings.values[0]

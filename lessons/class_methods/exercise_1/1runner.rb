require './lib/dog'

max = Dog.new("Max")
puts max.woof

## Describe what each part of the code above did -
# `max` => Initialize Dog instance with name Max
# `Dog` => Called the class Dog
# `.woof` => called the method woof on max instance

puts Dog.woof

## Is there any difference between the two methods above? (max.woof and Dog.woof)?

## Un-comment the line of code below, does it work? Why or why not?
puts max.bark


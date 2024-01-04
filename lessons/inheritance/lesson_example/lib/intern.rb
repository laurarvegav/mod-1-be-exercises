require './lib/employee'

class Intern
  
  def initialize(name, id, base_salary, bonus = 0)
    super
  end

  def get_coffee
    "Who got the latte?"
  end

  def benefits
    [:gets_to_get_me_coffee]
  end

end
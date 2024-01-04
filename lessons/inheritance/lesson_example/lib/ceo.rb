require_relative './employee'
class Ceo < Employee

  attr_reader :bonus

  def initialize(name, id, base_salary, bonus)
    super(name, id, base_salary)
    @bonus = bonus
  end

end
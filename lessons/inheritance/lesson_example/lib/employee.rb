class Employee
  attr_reader :name, :id, :base_salary

  def initialize(name, id, base_salary)
    @name = name
    @id = id
    @base_salary = base_salary
  end

  def total_compensation
    @base_salary + @bonus
  end

  def benefits
    [:sick_leave]
  end

end
require_relative './employee'
class Manager < Employee
  attr_reader :base_salary, :per_team_rate, :departments
  def initialize(name, id, base_salary)
    super
    @per_team_rate = 5
    @departments = []
  end

  def add_department(dept)
    @departments << dept
  end

  def benefits
    super << [:health_insurance]
  end

end
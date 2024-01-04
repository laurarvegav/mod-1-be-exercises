require './lib/ceo'

RSpec.describe Ceo do

  describe "setup" do
    it "exists" do
      ceo = Ceo.new(15,20)
    end
    it "has base_salary and bonus attributes" do
      ceo = Ceo.new(15,20)
      expect(ceo.base_salary).to eq(15)
      expect(ceo.bonus).to eq(20)
    end
  end

  describe "Has a name, ID, and total_compensation" do
    ceo = Ceo.new("Odell", 2334, 15,20)
    # Write tests to prove that a Ceo instance can have a Name and ID number, like any other Employee.
    # Also, the CEO should be able to receive a total compensation. Write at least one test that proves they can access this method.
    expect(ceo.total_compensation).to eq(35)
  end

end
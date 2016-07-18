require('spec_helper')

describe(Division) do
  describe('#employees')do
    it("tells which employees are working in a certain division") do
      test_division = Division.create({:name => "HR"})
      test_employee1 = Employee.create({:name => "test_employee1", :division_id => test_division.id})
      test_employee2 = Employee.create({:name => "test_employee2", :division_id => test_division.id})
    expect(test_division.employees()).to(eq([test_employee1, test_employee2]))
    end
  end
end

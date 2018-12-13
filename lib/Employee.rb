class Employee
  # * `Employee#name`
  #   * returns a `String` that is the employee's name
  # * `Employee#salary`
  #   * returns a `Fixnum` that is the employee's salary

  attr_reader :name, :salary, :manager
  attr_writer :salary, :manager

  @@all = []

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
  end

  def self.all
    @@all
  end

  # def manager
  #   # returns the manager that is related to this employee
  #   @manager
  # end

  # * `Employee.paid_over`
  #   * takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount

  # * `Employee.find_by_department`
  #   * takes a `String` argument that is the name of a department and returns
  # the first employee whose manager is working in that department

  # Employee.find_by_department("paper") => <Employee @name="Josh">
  def department
    self.manager.department
  end
  
  def self.find_by_department(department)
    # returns the first employee whose managers works in that department
    self.all.find do |employee|
      employee.department == department
    end
  end

  # * `Employee#tax_bracket`
  #   * returns an `Array` of all the employees whose salaries are within $1000 (± 1000) of the employee's who invoked the method
end

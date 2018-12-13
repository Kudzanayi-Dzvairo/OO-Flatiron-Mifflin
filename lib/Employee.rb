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
end

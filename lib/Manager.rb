require 'pry'
class Manager

  attr_reader :name, :department, :age
  attr_writer :department, :age

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    # returns an array of employees that are related to this manager
    # [1,2,3,4,5,6].select do |num|
    #     num.even?
    # end # => [2,4,6]
    Employee.all.select do |empl|
      empl.manager == self
    end
  end

  # * `Manager#hire_employee`
  #   * takes a `String` argument and a `Fixnum` argument of an employee's name
      # and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
  def hire_employee(name, salary)
    Employee.new(name, salary, self)
  end


  # * `Manager.all_departments`
  #   * returns an `Array` of all the department names that every manager oversees
  def self.all_departments
    # departments_arr = []
    # Manager.all.each do |mngr|
    #   if !departments_arr.include?(mngr.department)
    #     departments_arr << mngr.department
    #   end
    # end
    # departments_arr
    Manager.all.map {|mngr| mngr.department}.uniq
  end

  def self.unique_departments
    departments_arr = []
    Manager.all.each do |mngr|
      # if !departments_arr.include?(mngr.department)
        departments_arr << mngr.department
      # end
    end
    departments_arr
  end

  # * `Manager.average_age`
  #   * returns a `Float` that is the average age of all the managers

  def self.average_age
    Manager.all.reduce(0) {|acc, manager| acc + manager.age} / Manager.all.length
  end

end

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

end

require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

michael = Manager.new("Michael Scott", "Paper", 47)
rafael = Manager.new("Rafael", "Finance", 40)

josh = Employee.new("Josh", 34999, michael)
jonathan = Employee.new("Jonathan", 100000000, rafael)
rosanna = Employee.new("Rosanna", 1000000000, nil)
# Manager.all
binding.pry
puts "done"

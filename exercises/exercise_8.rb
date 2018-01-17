require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

p employee1 = @burnaby.employees.create(first_name: "Amy", last_name: "Wang", hourly_rate: 50)
p Employee.find(7).password
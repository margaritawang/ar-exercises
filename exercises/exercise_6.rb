require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@burnaby.employees.create(first_name: "Amy", last_name: "Wang", hourly_rate: 60)
@burnaby.employees.create(first_name: "Yuyumeer", last_name: "yewyew", hourly_rate: 50)
@burnaby.employees.create(first_name: "Jujumeer", last_name: "jewjew", hourly_rate: 50)
@richmond.employees.create(first_name: "a", last_name: "a", hourly_rate: 60)
@richmond.employees.create(first_name: "b", last_name: "b", hourly_rate: 100)
@richmond.employees.create(first_name: "c", last_name: "c", hourly_rate: 60)
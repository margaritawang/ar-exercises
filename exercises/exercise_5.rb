require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total revenue: #{Store.all.sum("annual_revenue")}"
puts "Total revenue: #{Store.all.sum("annual_revenue")/Store.all.count}"
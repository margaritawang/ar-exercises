require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Gimme a name"
user_input = gets.chomp
new_store = Store.create(name: user_input)
puts "-------------------------"
new_store.errors.messages.each do |key, value|
  puts "#{key} #{value[0]}"
end

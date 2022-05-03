require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "David", last_name: "First", hourly_rate: 40)
@store1.employees.create(first_name: "Pete", last_name: "Second", hourly_rate: 50)
@store1.employees.create(first_name: "Lex", last_name: "Third", hourly_rate: 55)

@store2.employees.create(first_name: "Dex", last_name: "Fourth", hourly_rate: 20)
@store2.employees.create(first_name: "Steve", last_name: "Fifth", hourly_rate: 25)
@store2.employees.create(first_name: "Lenny", last_name: "Sixth", hourly_rate: 35)
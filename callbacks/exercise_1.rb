require_relative '../setup'
require_relative '../exercises/exercise_1'
require_relative '../exercises/exercise_2'
require_relative '../exercises/exercise_3'
require_relative '../exercises/exercise_4'
require_relative '../exercises/exercise_5'
require_relative '../exercises/exercise_6'

x = @store1.employees.create(first_name: "testdczx", last_name: "tsccasdcc", hourly_rate: 45)

puts x.password


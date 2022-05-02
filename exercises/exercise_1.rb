require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
  # def initialize(name, annual_revenue, mens_apparel, womens_apparel)
  #   @name = name 
  #   @annual_revenue = annual_revenue
  #   @mens_apparel = mens_apparel
  #   @womens_apparel = womens_apparel
  # end
end

Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: "true", womens_apparel: "true")
Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: "false", womens_apparel: "true")
Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: "true", womens_apparel: "false")

puts Store.count
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

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 } 
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :mens_apparel, :womens_apparel, inclusion: [true, false]
  validate :must_have_stock, on: :create

  def must_have_stock
    if mens_apparel === false && womens_apparel === false
      errors.add(:base, "both mens_apparel & womens_apparel must not be false")
    end
  end
end

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true 
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates_associated :store
end

store = gets.chomp
x = Store.create(name: store)
x.errors.full_messages.each do |message|
  puts "#{message}"
end
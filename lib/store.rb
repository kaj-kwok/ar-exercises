class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 } 
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :mens_apparel, :womens_apparel, inclusion: [true, false]
  validate :must_have_stock, on: :create
  before_destroy :check_employees?, prepend: true

  def must_have_stock
    if mens_apparel === false && womens_apparel === false
      errors.add(:base, "both mens_apparel & womens_apparel must not be false")
    end
  end

  private
  def check_employees?
    if self.employees.size > 0
      self.errors.add(:base, "Can't be destroy because of employees > 0")
      throw :abort
    end
  end
  
end

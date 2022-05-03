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

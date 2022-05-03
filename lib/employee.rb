class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true 
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates_associated :store
  after_create :generate_password

  private
  def generate_password
    self.password = (0...8).map { (65 + rand(26)).chr }.join
    self.update(password: password)
  end

end

require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :has_at_least_one_apparel
  
  def has_at_least_one_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, 'has to be true')
    end
  end

  before_destroy :check_size

  private
    def check_size
      if employees.size > 0
        throw :abort
      end
    end
end

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store_id, presence: true
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, inclusion: {in: 40..200} 

  before_create :set_password
  
  private
    def set_password
      alpha = (('0'..'9').to_a + ('a'..'z').to_a).join
      password = ""
      8.times do |i|
        password += alpha[rand(alpha.length)];
      end
      self.password = password
    end

end

@burnaby = Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
@richmond = Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
@gastown = Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.all.length

# p Store.create(name: 'Gastown', annual_revenue: 10, mens_apparel: false, womens_apparel: true).valid?


require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}
  validate :has_at_least_one_apparel
  
  def has_at_least_one_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, 'has to be true')
    end
  end
end

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store_id, presence: true
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, inclusion: {in: 40..200} 
end

@burnaby = Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
@richmond = Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
@gastown = Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.all.length

# p Store.create(name: 'Gastown', annual_revenue: 10, mens_apparel: false, womens_apparel: true).valid?
p @burnaby.employees.create(first_name: "Amy", last_name: "Wang", hourly_rate: 200).valid?


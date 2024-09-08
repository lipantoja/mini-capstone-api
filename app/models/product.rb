class Product < ApplicationRecord
  # Create a model method called is_discounted? that returns true if an item is less than or equal to $10 and false otherwise.
  validates :price, presence: {greater_than: 0}
  validates :name, presence: true
  validates :name,
  # validates :description, presence: true ## Error on this line 
  # validates :description, length: { in: 1..500} 
  def is_discounted?
    if price <= 10
      return true
    else
      result false
    end
  end
end

class Product < ApplicationRecord
  # Create a model method called is_discounted? that returns true if an item is less than or equal to $10 and false otherwise.
  validates :price, presence: {greater_than: 0}
  validates :name, presence: true
  # validates :name,
  # validates :description, presence: true # Error on this line 
  validates :description, length: { in: 1..500} 
  def is_discounted?
    if price <= 10
      return true
    else
      return false
    end
  end
  def total
    tax = price.to_i * 0.09
    total = tax + price
    p "The total (including tax) is: $#{total}"
  end
  belongs_to :supplier # something is wrong here per error in httpie when products
  # def supplier
    # Supplier.find_by(id: supplier_id)
  # end
  has_many :orders
end

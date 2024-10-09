class Product < ApplicationRecord
  validates :price, presence: {greater_than: 0}
  validates :name, presence: true
  validates :description, length: { in: 1..500} 

  has_many :category_products
  has_many :categories, through: :category_products
  
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
  belongs_to :supplier 
  has_many :orders
end

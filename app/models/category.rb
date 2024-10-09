class Category < ApplicationRecord
  def products
    category_products.map
  end
end

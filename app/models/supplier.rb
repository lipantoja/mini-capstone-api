class Supplier < ApplicationRecord
  has_many :products
  ## Could also be shown as
  # def products
  #   Product.where(supplier_id: id)
  # end
end
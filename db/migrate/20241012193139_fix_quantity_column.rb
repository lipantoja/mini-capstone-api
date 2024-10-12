class FixQuantityColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :carted_products, :quanitity, :quantity
  end
end

class CreateRemoveProductIdFromOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :remove_product_id_from_orders do |t|
      t.integer :product_id

      t.timestamps
    end
  end
end

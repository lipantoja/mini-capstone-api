class CreateSuppliers < ActiveRecord::Migration[7.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :string
      t.string :email
      t.string :string
      t.string :phone_number
      t.string :string

      t.timestamps
    end
  end
end

class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :order_no
      t.string :item
      t.float :price
      t.integer :quantity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateKarts < ActiveRecord::Migration[5.1]
  def change
    create_table :karts do |t|
      t.integer :quantity
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end

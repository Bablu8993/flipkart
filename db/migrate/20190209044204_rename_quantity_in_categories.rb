class RenameQuantityInCategories < ActiveRecord::Migration[5.1]
  def change
    rename_column :categories, :qantity, :quantity 
  end
end

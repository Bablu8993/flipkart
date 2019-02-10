class Item < ApplicationRecord
  belongs_to :category
  has_many  :orders
  validates :name, uniqueness: true, presence: true, length: {minimum: 5, maximum:30}
  validates :quantity, presence: true, format:{with: /\A\d+\z/, message: "Only interger allowed"}
  validates :price, presence: true

  def self.out_of_stock?(no_of_item)
    binding.pry
    # true if quantity < no_of_item
  end
end
  

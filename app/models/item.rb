class Item < ApplicationRecord
  belongs_to :category
  validates :name, uniqueness: true, presence: true, length: {minimum: 5, maximum:30}
  validates :quantity, presence: true, format:{with: /\A\d+\z/, message: "Only interger allowed"}
  validates :price, presence: true
end
  

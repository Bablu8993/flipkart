class Category < ApplicationRecord
  has_many :items

  validates :category_name, uniqueness: true, presence: true, length: {minimum: 5, maximum:30}
  validates :quantity, presence: true, format:{with: /\A\d+\z/, message: "Only interger allowed"}
end

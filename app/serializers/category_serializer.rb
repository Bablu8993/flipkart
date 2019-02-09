class CategorySerializer < ActiveModel::Serializer
  attributes :categories
  def categories
    category_map = {}
    Category.all.each do |category|
      category_map["category_name"] = category.category_name
      category_map["quantity"] = category.quantity
    end
    category_map
  end
end

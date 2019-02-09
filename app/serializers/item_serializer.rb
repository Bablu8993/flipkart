class ItemSerializer < ActiveModel::Serializer
  attributes :items_category_wise
  include ActionView::Helpers::DateHelper
  def items_category_wise
    item_category_map = {}
    Item.all.each do |item|
      item_category_map["item_name"] = item.name
      item_category_map["category_name"] = item.category.category_name
      item_category_map["quantity"] = item.quantity
      item_category_map["price"] = "Rs. "+item.price.to_s
      item_category_map["arrived in stock"] = time_ago_in_words(item.created_at) +" ago"
    end
    item_category_map
  end
end

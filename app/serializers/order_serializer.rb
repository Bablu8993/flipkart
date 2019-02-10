class OrderSerializer < ActiveModel::Serializer
  include ActionView::Helpers::DateHelper
  attributes :order_no, :item, :price,  :quantity, :total_cost, :order_date, :delivery_status

  def total_cost
    @object.price * @object.quantity
  end

  def order_date
    time_ago_in_words(@object.created_at) +" ago"
  end

  def delivery_status
    
    if (@object.created_at + 5.day).day - Time.now.day <= 0
      "delivered on #{@object.created_at + 7.day}"
    else
      "will be delivered on  #{@object.created_at + 7.day}"
      # time_ago_in_words(Time.current - @object.created_at)
    end
  end
end

class KartSerializer < ActiveModel::Serializer
  attributes :item, :price, :quantity, :total_price_to_pary, :expected_delivery_date

  def total_price_to_pary
    @object.price * @object.quantity
  end

  def expected_delivery_date
    "from today is #{@object.created_at + 7.day}"
  end
end

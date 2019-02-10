class OrdersController < ApplicationController
  before_action :authenticate_user
  # before_action :authorize_as_admin, only: [:destroy, :current]
  # before_action :authorize

  def index
    order =  current_user.orders
    if !order.empty?
      render json: order
    else
      render json:{msg:"You did not Order anything!. Are You poor guy"}
    end
  end

  def create
    out_of_stock = false; out_of_stock_item = []
    params["orders"].each do |item_params|
      item = Item.find_by(name:item_params["name"])
      if item_params["quantity"] > item.quantity
        out_of_stock_item << item.name
        out_of_stock = true
      else  
        current_user.orders.create(order_no: SecureRandom.hex, item: item.name, price: item.price, quantity: item_params["quantity"])
        cat = item.category
        cat.update_attributes(quantity: cat.quantity - item_params["quantity"])
        item.update_attributes(quantity: item.quantity - item["quantity"])
      end  
    end
    if out_of_stock
      render json:{msg: "#{out_of_stock_item} Item out of stock"}
    else
      render json:{error: "Order created successfully"}
    end
  end

  def destroy
  end
end

class KartsController < ApplicationController
  before_action :authenticate_user

  def index
    karts =  current_user.karts
    if !karts.empty?
      render json: karts
    else
      render json:{msg:"You did not have anything in your kart!. Add some items"}
    end
  end

  def create
    # out_of_stock = false; out_of_stock_item = []
    params["karts"].each do |item_params|
      item = Item.find_by(name:item_params["name"])
      # if item_params["quantity"] > item.quantity
        # out_of_stock_item << item.name
        # out_of_stock = true
      # else  
        current_user.karts.create(item: item.name, price: item.price, quantity: item_params["quantity"])
        # cat = item.category
        # cat.update_attributes(quantity: cat.quantity - item_params["quantity"])
        # item.update_attributes(quantity: item.quantity - item["quantity"])
      # end  
    end
    # if out_of_stock
      # render json:{msg: "#{out_of_stock_item} Item out of stock"}
    # else
      render json: current_user.karts
    # end
  end

  def destroy
  end
end

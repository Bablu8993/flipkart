class ItemsController < ApplicationController
  before_action :authorize_as_admin, only:[:create, :update, :destroy]

  def index 
    render json:Item.all
  end

  def create
    @category = Category.find_by(category_name: params['category_name'])
    @item = @category.items.new(item_params)
    if @item.validate
      @item.save
      render json:{success: "#{@item.name} created successfully"}
    else
      render json:{errors: @item.errors.messages}
    end
  end

  def update
  end

  def destroy
  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :quantity)
  end
end

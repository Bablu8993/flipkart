class CategoriesController < ApplicationController
  before_action :authorize_as_admin, only:[:create, :update, :destroy]

  def index
    render json: Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.validate
      @category.save
      render json:{msg: "category created successfully"}
    else
      render json:{error: @category.errors.messages}
    end
  end

  def update
  end

  def destroy
  end

  private
  def category_params
    params.require(:category).permit(:category_name, :quantity)
  end
end

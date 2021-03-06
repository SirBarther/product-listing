class CategoriesController < ApplicationController
  def index
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path
      flash[:notice] = "Success!"
    else
      render "categories/new"
    end
  end

  def show
    @category = Category.find(params[:id])
    @products = Product.where(category_id: @category)
  end

  private
  def category_params
    params.require(:category).
    permit(:name)
  end
end

class ProductsController < ActionController::Base
  def index
  end

  def new
    @product = Product.new
    @category = Category.find(params[:category_id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
      flash[:notice] = "Success!"
    else
      render "products/new"
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).
    permit(
      :name,
      :price,
      :description,
      :category_id
      )
  end
end

class CategoriesController < ActionController::Base
  def index
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save

      redirect_to root_path#, notice: "Success!"
      flash[:notice] = "Success!"
    else

      render "categories/new"#, notice: "Error!"
      # flash[:notice] = "Error!"
    end
  end

  private

  def category_params
    params.require(:category).
    permit(:name)
  end
end

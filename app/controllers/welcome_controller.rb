class WelcomeController < ActionController::Base
  def index
    @categories = Category.all
    @products = Product.all
  end
end

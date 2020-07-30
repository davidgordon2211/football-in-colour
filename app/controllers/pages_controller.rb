class PagesController < ApplicationController
  def home
    @products = Product.last(6).reverse
  end
end

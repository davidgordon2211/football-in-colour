class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product), notice: 'Product successfully added'
    else
      render :new
    end
  end

  def index
    @products = Product.all
  end

  def show; end

  def edit; end

  def update
    if @product.save
      redirect_to product_path(@product), notice: 'Product successfully updated'
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      redirect_to products, notice: 'Product successfully removed'
    else
      render :show
    end
  end

  private

  def set_product
    @product ||= Product.find(params[:id])
  end

  def product_params
    params[:product].permit(:name, :price, :description, :image)
  end
end

class ProductsController < ApplicationController
  # get, site home page
  def home
  end

  # get
  def index
    @products = Product.all
  end

  # get, read
  def show
    @product = Product.find(params[:id])
  end

  # get, create
  def new
    @product = Product.new()
  end

  # get, update
  def edit
    @product = Product.find(params[:id])
  end

  # post, create
  def create
    # render plain: params[:products].inspect
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  # patch, update
  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  # delete, destroy
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:name, :price)
    end
end

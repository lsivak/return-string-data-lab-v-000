class ProductsController < ApplicationController

  def create
  @product = Product.create(product_params)
  @product.save
  redirect_to products_path(@product)
end

def index
  @products = Product.all
end


  def new
    @product = Product.new
  end

def description
product = Pruduct.find(params[:id])
render plain: product.description
end

def inventory
product = Pruduct.find(params[:id])
render plain: product.inventory
end


  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_product
    #   @product = Product.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :description, :inventory)
    end
  end

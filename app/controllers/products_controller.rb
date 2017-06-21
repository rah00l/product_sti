class ProductsController < ApplicationController
	# GET /products
	def index
		@products = Product.all

		respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @product = Product.new()
    @product.type = params[:type]
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: 'Product was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
  end
  private

  def product_params
    params.require(:product).permit(:name, :price, :color, :status, :inward_date, :type, :description)
  end
end

class ProductsController < ApplicationController
	 before_action :set_product, only: [:edit, :update]
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

  # PUT /products/1
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_path, notice: 'product was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :color, :status, :inward_date, :type, :description)
  end

  def set_product
    @product = Product.find(params[:id])
  end

end

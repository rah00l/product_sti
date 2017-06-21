class ProductsController < ApplicationController
	# GET /products
	def index
		@products = Product.all

		respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
  end

  def edit
  end
end

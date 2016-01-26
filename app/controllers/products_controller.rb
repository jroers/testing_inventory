class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		product_params = params.require(:product).permit(:name, :description, :category, :sku, :wholesale, :retail)
		@product = Product.new(product_params)

		if @product.save
			redirect_to product_path(@product.id)
		else
			flash[:error] = "I'm sorry. This information does not work."
			redirect_to new_product_path
		end
	end

	def show
		@product = Product.find_by_id(params[:id])
	end

	def edit
		@product = Product.find_by_id(params[:id])
	end

	def update
		@product = Product.find_by_id(params[:id])
		current_params = params.require(:product).permit(:name, :description, :category, :sku, :wholesale, :retail)
		
		if @product.update_attributes(current_params)
			redirect_to product_path
		else
			flash[:error] = "Update failed. Please ensure all fields are appropriately entered."
			redirect_to edit_product_path
		end
	end

	def destroy
		@product = Product.find_by_id(params[:id])
		@product.destroy
		redirect_to root_path
	end
end

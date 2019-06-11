class Api::V1::ProductsController < ApplicationController
skip_before_action :authorized, only: [:index]
	
	def index
		@products = Product.all
		render json: @products
	end
    
    def create
    	
    	newProduct = Product.create(product_params)
    	if !Category.find_by(category_name: params[:category])
           category = Category.create(category_name: params[:category])
       elsif Category.find_by(category_name: params[:category])
       	   category = Category.find_by(category_name: params[:category])
       	end
       	category.products << newProduct
       	categoryAll = Category.all
        render json: categoryAll
    end



private

def product_params
   params.permit(:name, :quantity, :image, :price, :description)
end
end
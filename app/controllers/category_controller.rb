class CategoryController < ApplicationController
skip_before_action :authorized, only: [:index]
	def index
     category = Category.all
     render json: category
	 end
end

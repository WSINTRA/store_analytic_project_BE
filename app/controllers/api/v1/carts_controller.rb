class Api::V1::CartsController < ApplicationController
 skip_before_action :authorized, only: [:create, :new]
	

	def index
		binding.pry
	end

	def create
		binding.pry
		@cart = Cart.create(cart_params)
	end
	
end

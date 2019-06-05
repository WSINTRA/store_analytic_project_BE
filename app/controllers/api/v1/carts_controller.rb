class Api::V1::CartsController < ApplicationController
 skip_before_action :authorized, only: [:create, :new]
	

	def index
		binding.pry
	end
	
    def new
    	@cart = Cart.new
    end

	def create
		@cart = Cart.create(cart_params)
	end
	
end

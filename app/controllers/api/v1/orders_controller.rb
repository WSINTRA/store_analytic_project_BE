class Api::V1::OrdersController < ApplicationController

	def index
		binding.pry
	end
	#create a new order for each product sold, this will be used for analytics.
	#when an order is created the quantity of the product will reduce by 1,

	#An order will have one product, 
	#A user has many orders and has many purchases through orders, a purchase belongs to an order and 
	#a product
	#An order belongs to a user
end

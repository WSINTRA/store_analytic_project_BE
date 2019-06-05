class OrdersController < ApplicationController

	def create
        order = Order.create(user_id: params[:user][:id])
        params[:order].each { |x| Purchase.create(product_id: x[:id]) }
		#params[:order].each {|x| puts "the current item ID is #{x[:id]}"}
		params[:order].each do |x| 
			Purchase.create(product_id: x[:id]) 
			order.purchases << Purchase.last 
			Product.find(x[:id]).update(quantity: (Product.find(x[:id]).quantity - 1) )
			#Reduces quantity of Product in Db by 1
		end

		render json: order
 
	end


	def index
		orders = Order.all
		render json: orders
	end
end

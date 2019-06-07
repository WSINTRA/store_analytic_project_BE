class OrdersController < ApplicationController

	def create
        order = Order.create(user_id: params[:user][:id], total:params[:total])
        unavailable = ["alas these products are out of stock"]
        params[:order].each { |x| Purchase.create(product_id: x[:id]) }
		#params[:order].each {|x| puts "the current item ID is #{x[:id]}"}
		params[:order].each do |x| 
			Purchase.create(product_id: x[:id]) 
			order.purchases << Purchase.last 

			if Product.find(x[:id]).quantity > 0
			   Product.find(x[:id]).update(quantity: (Product.find(x[:id]).quantity - 1) )
            elsif Product.find(x[:id]).quantity <= 0
            	

            	unavailable << "#{Product.find(x[:id]).name}"
            	
                return render json: {name: unavailable}
            	
            end
			#Reduces quantity of Product in Db by 1
		end
        current_user = User.find(params[:user][:id])
	    current_user.cart.destroy
	    user_cart = Cart.create(user_id: current_user.id)
		
     render json: order
 
	end


	def index
		orders = Order.all
		render json: orders
	end
end

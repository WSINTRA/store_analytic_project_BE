class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
 

 def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end
  
  
  def create
    @user = User.create(user_params)
    Cart.create(user_id: @user.id)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user, username may already exist or an error occured' }, status: :not_acceptable
    end
  end

  def updateCart
    current_user = User.find(params[:user][:id])
    current_user.cart.destroy
    user_cart = Cart.create(user_id: current_user.id)
    params[:order].each do |x| user_cart.products << Product.find(x[:id]) end
      render json: current_user

  end
 
  private
 
  def user_params
    params.permit(:employee, :admin, :first_name, :password, :email, :last_name, :street_address, :telephone, :state )
  end
end
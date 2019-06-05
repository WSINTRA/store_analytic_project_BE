class Product < ApplicationRecord
	has_one :product_category
	has_one :category, through: :product_category
	has_many :product_carts
    has_many :carts, through: :product_carts
    has_many :purchases
 end

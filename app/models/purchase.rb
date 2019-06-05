class Purchase < ApplicationRecord
	has_many :order_purchases
	has_many :orders, through: :order_purchases
	belongs_to :product
end

class Order < ApplicationRecord
	has_many :order_purchases
	has_many :purchases, through: :order_purchases
	belongs_to :user
end

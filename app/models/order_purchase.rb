class OrderPurchase < ApplicationRecord
	belongs_to :order
	belongs_to :purchase
end

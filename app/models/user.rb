class User < ApplicationRecord
	has_secure_password
	has_one :cart
	validates :email, uniqueness: { case_sensitive: false }
	has_many :orders
end

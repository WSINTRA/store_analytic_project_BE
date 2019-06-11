class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :email, :state, :telephone, :street_address, :id, :admin, :employee
  has_one :cart


end

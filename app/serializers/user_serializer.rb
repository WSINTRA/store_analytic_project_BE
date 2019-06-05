class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :id, :admin
  has_one :cart


end

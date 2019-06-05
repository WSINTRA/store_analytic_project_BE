class UserSerializer < ActiveModel::Serializer
  attributes :first_name
  has_one :cart


end

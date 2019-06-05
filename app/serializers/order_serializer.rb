class OrderSerializer < ActiveModel::Serializer
  attributes :id, :purchases, :created_at
end

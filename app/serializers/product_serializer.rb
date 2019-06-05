class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image, :category
  has_one :category
end

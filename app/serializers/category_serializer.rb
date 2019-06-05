class CategorySerializer < ActiveModel::Serializer
  attributes :category_name, :products
  has_many :products
end

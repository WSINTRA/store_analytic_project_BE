class PurchaseSerializer < ActiveModel::Serializer
  attributes :product
  belongs_to :product
end

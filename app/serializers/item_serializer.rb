class ItemSerializer < ActiveModel::Serializer
  belongs_to :brand
  attributes :id, :name 
end

class BrandSerializer < ActiveModel::Serializer
  has_many :items
  attributes :id, :name, :description
end

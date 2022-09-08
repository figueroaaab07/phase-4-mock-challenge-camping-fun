class CamperIndexSerializer < ActiveModel::Serializer
  attributes :id, :name, :age
  has_many :signups
end

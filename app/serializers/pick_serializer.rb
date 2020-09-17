class PickSerializer < ActiveModel::Serializer
  attributes :id
  
  has_one :user
  has_one :league
  has_one :team
  has_one :match
end

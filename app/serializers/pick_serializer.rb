class PickSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :league_id, :team_id, :match_id
  
  has_one :user
  has_one :league
  has_one :team
  has_one :match
end

class PickSerializer < ActiveModel::Serializer
  attributes :id, :league_id, :user_id, :team_id, :match_id
end

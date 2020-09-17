class MatchSerializer < ActiveModel::Serializer
  attributes :id, :home_team_id, :away_team_id, :matchweek, :match_datetime, :home_goals, :away_goals

end

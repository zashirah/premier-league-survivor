class MatchSerializer < ActiveModel::Serializer
  attributes :id, :home_team_id, :away_team_id, :matchweek, :match_datetime, :home_goals, :away_goals, :home_team, :away_team

  # has_one :home_team

  def home_team 
    object.home_team.name
  end

  def away_team 
    object.away_team.name
  end
end

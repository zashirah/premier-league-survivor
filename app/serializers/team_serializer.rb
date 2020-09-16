class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :logo, :primary_color, :secondary_color, :points

  def points 
    home_win = object.home_teams.where("home_goals < away_goals").count
    away_win = object.away_teams.where("home_goals > away_goals").count
    home_draw = object.home_teams.where("home_goals = away_goals").count
    away_draw = object.away_teams.where("home_goals = away_goals").count

    return home_win * 3 + away_win * 3 + home_draw + away_draw
  end
end

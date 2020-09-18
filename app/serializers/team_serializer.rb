class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :logo, :primary_color, :secondary_color, :points, :wins, :draws, :goals_for, :goals_against

  def wins
    home_win = object.home_teams.where("home_goals > away_goals").count
    away_win = object.away_teams.where("home_goals < away_goals").count

    return home_win + away_win
  end

  def draws
    home_draw = object.home_teams.where("home_goals = away_goals").count
    away_draw = object.away_teams.where("home_goals = away_goals").count

    return home_draw + away_draw
  end

  def points
    home_win = object.home_teams.where("home_goals > away_goals").count
    away_win = object.away_teams.where("home_goals < away_goals").count
    home_draw = object.home_teams.where("home_goals = away_goals").count
    away_draw = object.away_teams.where("home_goals = away_goals").count

    return home_win * 3 + away_win * 3 + home_draw + away_draw
  end

  def goals_for
    home_goals = object.home_teams.sum(:home_goals)
    away_goals = object.away_teams.sum(:away_goals)

    return home_goals + away_goals
  end

  def goals_against
    home_goals_against = object.home_teams.sum(:away_goals)
    away_goals_against = object.away_teams.sum(:home_goals)

    return home_goals_against + away_goals_against
  end
end

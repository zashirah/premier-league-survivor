class CustomLeagueSerializer < ActiveModel::Serializer
  attributes :id, :manager_id, :name, :status, :users

  def manager_id
    object.manager.id
  end

  def get_points(user)
    picks = Pick.all
    points = 0
    user.picks.each do |pick|
      if pick.league_id == object.id
        if pick.team == pick.match.home_team && !pick.match.home_goals.nil? && pick.match.home_goals > pick.match.away_goals
          points += 3
        elsif pick.team == pick.match.away_team && !pick.match.away_goals.nil? && pick.match.home_goals < pick.match.away_goals
          points += 3
        elsif pick.match.away_goals == pick.match.home_goals && !pick.match.home_goals.nil?
          points += 1
        end
      end
    end
    points
  end

  def users
    object.users.map do |user|
      { id: user.id, username: user.username, total_score: get_points(user) }
    end
  end
end

class PickSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :league_id, :team_id, :match_id, :league_name, :matchweek, :picked_team, :home_team, :away_team, :match_datetime, :matchday_string, :matchweek_allowed, :home_allowed, :away_allowed, :match_status_allowed, :home_selected_status, :away_selected_status, :selected_id
  
  def league_name
    object.league.name
  end

  def matchweek 
    object.match.matchweek
  end

  def picked_team
    object.team.name
  end

  def home_team
    object.match.home_team.name
  end

  def away_team
    object.match.away_team.name
  end

  def home_goals
    object.match.home_goals
  end

  def away_goals
    object.match.away_goals
  end

  def match_datetime
    object.match.match_datetime
  end

  def matchday_string
    object.match.match_datetime.to_formatted_s(:long_ordinal)
  end

  def matchweek_allowed
    @picks = Pick.all.where(user_id: object.user.id)

    @picks.each do |loopPick|
      if object.match.matchweek == loopPick.match.matchweek
        return false
      end
    end

    return true
  end

  def home_allowed
    @picks = Pick.all.where(user_id: object.user.id)

    @home_counter = 0 

    @picks.each do |loopPick|
      if object.match.home_team == loopPick.match.home_team
        @home_counter += 1
        if @home_counter > 1
          return false
        end
      end
    end

    return true
  end

  def away_allowed
    @picks = Pick.all.where(user_id: object.user.id)

    @away_counter = 0 

    @picks.each do |loopPick|
      if object.match.away_team == loopPick.match.away_team
        @away_counter += 1
        if @away_counter > 1
          return false
        end
      end
    end

    return true
  end

  def match_status_allowed
    object.match.match_datetime < DateTime.now ? false: true
  end

  def home_selected_status 
    object.team == object.match.home_team ? true : false
  end

  def away_selected_status 
    object.team == object.match.away_team ? true : false
  end

  def selected_id
    object.id
  end

end

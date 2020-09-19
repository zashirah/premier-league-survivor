class Match < ApplicationRecord
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'

  has_many :picks

  def allowed?(user_id, id) 
    @picks = League.find(id).picks.where(user_id: user_id)
    # @picks  = Pick.where(`user_id = ? AND league_id = ?`, user_id, id)

    @home_counter = 0
    @away_counter = 0
    @matchweek_counter = 0
    @home_selected_counter = 0
    @away_selected_counter = 0

    @picks.each do |pick|
      if matchweek == pick.match.matchweek
        @matchweek_counter += 1
      end
      if home_team == pick.team
        @home_counter += 1
        if matchweek == pick.match.matchweek
          @home_selected_counter += 1
        end
      elsif away_team == pick.team
        @away_counter += 1
        if matchweek == pick.match.matchweek
          @away_selected_counter += 1
        end
      end
    end

    @match_status = match_datetime < DateTime.now ? @match_status = false : @match_status = true

    {
      home_allowed: @home_counter < 2,
      away_allowed: @away_counter < 2,
      matchweek_allowed: @matchweek_counter < 1,
      match_status_allowed: @match_status,
      home_selected_status: @home_selected_counter > 0,
      away_selected_status: @away_selected_counter > 0
    }
  end

  def team_names
    {
      home_team: home_team.name,
      away_team: away_team.name
    }
  end


end

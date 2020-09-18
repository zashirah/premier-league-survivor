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

    @picks.each do |pick|
      if matchweek == pick.match.matchweek
        @matchweek_counter += 1
      else
        if home_team == pick.team
          @home_counter += 1
        elsif away_team == pick.team
          @away_counter += 1
        end
      end
    end

    return {
      home_allowed: @home_counter < 2,
      away_allowed: @away_counter < 2,
      matchweek_allowed: @matchweek_counter < 1
    }

    # @matchweek_array = []
    # @team_array = []

    # @picks.each do |pick|
    #   @matchweek_array << pick.match.matchweek
    #   if pick.match.home_team == pick.team
    #     @team_array << pick.match.home_team
    #   else
    #     @team_array << pick.match.away_team
    #   end
    # end

    # @matches = Match.all

    # @match_allowplay_array = []
    # @hometeam_allowplay_array = []

    # all.each do |match|
    #   if @matchweek_array.include?(match.matchweek)
    #     @match_allowplay_array << 'unavailable'
    #   end
      
    #   if @team_array.select { |team| team == match.home_team }.length > 1
    #     @hometeam_allowplay_array << 'home team unavailable'
    #   end
    #   if @team_array.select { |team| team == match.away_team }.length > 1
    #     @awayteam_allowplay_array << 'away team unavailable'
    #   end
    # end

  end
end

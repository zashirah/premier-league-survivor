class Pick < ApplicationRecord
  belongs_to :user
  belongs_to :league
  belongs_to :team
  belongs_to :match

  def pick_allowed?(user_id, id) 
    @picks = League.find(id).picks.where(user_id: user_id)

    @home_counter = 0
    @away_counter = 0
    @matchweek_counter = 0
    @home_selected_counter = 0
    @away_selected_counter = 0
    @selected_id = ''

    @picks.each do |loopPick|
      if match.matchweek == loopPick.match.matchweek
        @matchweek_counter += 1
      end
      if match.home_team == loopPick.team
        @home_counter += 1
        if match.matchweek == loopPick.match.matchweek
          @home_selected_counter += 1
          @selected_id = loopPick.id
        end
      elsif match.away_team == loopPick.team
        @away_counter += 1
        if match.matchweek == loopPick.match.matchweek
          @away_selected_counter += 1
          @selected_id = loopPick.id
        end
      end
    end

    @match_status = match_datetime < DateTime.now ?
     @match_status = false :
     @match_status = true
     
    {
      home_allowed: @home_counter < 2,
      away_allowed: @away_counter < 2,
      matchweek_allowed: @matchweek_counter < 1,
      match_status_allowed: @match_status,
      home_selected_status: @home_selected_counter.positive?,
      away_selected_status: @away_selected_counter.positive?,
      selected_id: @selected_id
    }
  end
end

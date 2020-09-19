class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :update, :destroy]

  # GET /matches
  def index
    @matches = Match.all

    render json: @matches
  end

  # GET /matches/1
  def show
    render json: @match
  end

  # POST /matches
  # def create
  #   @match = Match.new(match_params)

  #   if @match.save
  #     render json: @match, status: :created, location: @match
  #   else
  #     render json: @match.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /matches/1
  def update
    if @match.update(match_params)
      render json: @match
    else
      render json: @match.errors, status: :unprocessable_entity
    end
  end

  def user_league_schedule
    # @league = League.find(params[:id])
    # @user = User.find(params[:user_id])

    @matches = Match.all

    @new_matches = @matches.map do |match|
      {
        **match.attributes,
        **match.allowed?(params[:user_id], params[:id]),
        **match.team_names
      }
    end

    render json: @new_matches
  end

  # @matches.each do |match|
  #   @picks.each do |pick|
  #     if pick.match_id == match.id
  #       p 'match'
  #     else
  #       p 'no match'
  #     end
  #   end
  # end

  # DELETE /matches/1
  # def destroy
  #   @match.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def match_params
      params.require(:match).permit(:home_team_id, :away_team_id, :matchweek, :match_datetime, :home_goals, :away_goals, :result)
    end
end

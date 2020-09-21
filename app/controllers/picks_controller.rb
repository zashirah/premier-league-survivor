class PicksController < ApplicationController
  before_action :set_pick, only: [:show, :update, :destroy]

  # GET /picks
  def index
    @picks = Pick.all

    render json: @picks
  end

  # GET /picks/1
  def show
    render json: @pick
  end

  # POST /picks
  def create
    @pick = Pick.new(pick_params)

    @team_counter = 0
    
    @picks = League.find(pick_params[:league_id]).picks.where(user_id: pick_params[:user_id])

    p "These are the picks: #{@picks}"
    @picks.each do |pick|
      if pick.match.matchweek == @pick.match.matchweek
        render json: {
          name: 'cannot submit'
        }
      end
      if pick.team == @pick.team
        @team_counter += 1
        if @team_counter > 1
          render json: {
          name: 'cannot submit'
        }
      end
      end
      if @pick.match.match_datetime < Time.now
        render json: {
          error: 'cannot submit'
        }
      end
    end
    

    if @pick.save
      render json: @pick, status: :created, location: @pick
    else
      render json: @pick.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /picks/1
  def update
    if @pick.update(pick_params)
      render json: @pick
    else
      render json: @pick.errors, status: :unprocessable_entity
    end
  end

  # DELETE /picks/1
  def destroy
    if @pick.match.match_datetime > Time.now
      @pick.destroy
    else 
        render json: {
          error: 'cannot submit'
        }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pick
      @pick = Pick.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pick_params
      params.require(:pick).permit(:user_id, :league_id, :team_id, :match_id)
    end
end

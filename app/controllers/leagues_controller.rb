class LeaguesController < ApplicationController
  before_action :set_league, only: [:show, :update, :destroy]
  # before_action :authorize_request

  # GET /leagues
  def index
    @leagues = League.all

    render json: @leagues
  end

  # GET /leagues/1
  def show
    render json: @league, serializer: CustomLeagueSerializer
  end

  # POST /leagues
  def create
    @league = League.new(league_params)

    if @league.save
      render json: @league, status: :created, location: @league
    else
      render json: @league.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /leagues/1
  def update
    if @league.update(league_params)
      render json: @league
    else
      render json: @league.errors, status: :unprocessable_entity
    end
  end

  # DELETE /leagues/1
  def destroy
    @league.destroy
  end

  def add_user_to_league
    @user = User.find(params[:user_id])
    @league = League.find(params[:id])

    @league.users.push(@user)

    render json: @league
  end

  def add_pick
    @pick = Pick.new(pick_params)

    if @pick.save
      render json: @pick, status: :created, location: @pick
    else
      render json: @pick.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_league
      @league = League.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def league_params
      params.require(:league).permit(:name, :status, :user_id)
    end

    def pick_params
      params.require(:pick).permit(:user_id, :league_id, :match_id, :team_id)
    end
end

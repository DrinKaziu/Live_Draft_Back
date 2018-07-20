class Api::V1::PlayersController < ApplicationController

  def index
    @players = Player.all
    render json: @players
  end

  # def show
  #   @player = Player.find(params[:id])
  #   render json: @player
  # end

  # def create
  #   @player = Player.create(player_params)
  #   render json: @player
  # end

  # private
  #
  # def player_params
  #   params.require(:player).permit(:active, :jersey, :lname, :fname, :displayName, :team, :position, :height, :weight, :dob, :college)
  # end

end

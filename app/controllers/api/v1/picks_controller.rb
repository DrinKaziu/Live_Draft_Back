class Api::V1::PicksController < ApplicationController

  def index
    @picks = Pick.all
    render json: @picks
  end

  def create
    @player = Player.find(params[:player_id])
    @team = Team.find(params[:team_id])
    @pick = Pick.create(player: @player, team: @team)
    render json: @pick 
  end

  def destroy
		pick_association = Pick.find_by(player_id: picks_params[:player_id], team_id: picks_params[:team_id])
		pick_association.delete
		render json: pick_association
	end

  private

  def picks_params
    params.require(:pick).permit(:player_id, :team_id)
  end
end

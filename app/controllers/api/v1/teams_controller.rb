class Api::V1::TeamsController < ApplicationController

  def index
    @teams = Team.all
    render json: @teams
  end

  def create
    @team = Team.create(name: params[:team][:name])
    render json: @team
  end

  def show
    @team = Team.find(params[:id])
    render json: @team
  end

  def destroy
    @team = Team.find(params[:id])
    @picks = Pick.all.where(team_id: params[:id])
    @picks.delete_all
    @team.delete
    render json: @team
  end

  def update
    @team = Team.find(params[:id])
    @team.update(params[:name])
    render json: @team
  end
end

class Player < ApplicationRecord
  has_many :team_players
  has_many :teams, through: :picks

  def self.active_players
    @players = self.all
    @players.find_all { |player| player.active == 1 }
  end

end

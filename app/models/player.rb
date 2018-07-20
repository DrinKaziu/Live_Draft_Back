class Player < ApplicationRecord
  has_many :team_players
  has_many :teams, through: :picks
end

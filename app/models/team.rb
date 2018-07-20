class Team < ApplicationRecord
  has_many :team_players
  has_many :players, through: :picks
end

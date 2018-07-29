class Team < ApplicationRecord
  has_many :picks
  has_many :players, through: :picks
end

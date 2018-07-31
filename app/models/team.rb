class Team < ApplicationRecord
  has_many :picks
  has_many :players, through: :picks

  # def self.all_with_picks
  #   self.all.map do |team|
  #     {id: team.id, name: team.name, picks: team.picks}
  #   end
  # end

end

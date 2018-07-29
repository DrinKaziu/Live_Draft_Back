class Player < ApplicationRecord
  has_many :picks
  has_many :teams, through: :picks

  def self.active_players
    Player.where(active: '1')
  end

end



# Client.where(first_name: 'Lifo')

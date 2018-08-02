class TeamSerializer < ActiveModel::Serializer

  attributes :id, :name, :picks

  def picks
    self.object.picks.map do |pick|
      pick.player
    end
  end

end

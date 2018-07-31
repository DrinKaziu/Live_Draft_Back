class TeamSerializer < ActiveModel::Serializer

  attributes :id, :name, :picks

  def picks
    self.object.players
  end

end

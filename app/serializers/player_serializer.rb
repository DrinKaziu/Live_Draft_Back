class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :lname, :fname, :displayName, :team, :byeWeek, :position, :positionRank, :overallRank

end

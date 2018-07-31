class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :lname, :fname, :displayName, :team, :byeWeek, :position, :positionRank, :overallRank
  has_many :picks
end

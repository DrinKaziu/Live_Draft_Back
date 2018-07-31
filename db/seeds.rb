# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


playersHash = RestClient.get("https://www.fantasyfootballnerd.com/service/draft-rankings/json/92hydswv9tek/1/")

players = JSON.parse(playersHash)

players['DraftRankings'].each do |player|
  Player.create(
  :lname => player['lname'],
  :fname => player['fname'],
  :displayName => player['displayName'],
  :team => player['team'],
  :byeWeek => player['byeWeek'],
  :position => player['position'],
  :positionRank => player['positionRank'],
  :overallRank => player['overallRank']
  )
end

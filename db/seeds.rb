# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


playersHash = RestClient.get("https://www.fantasyfootballnerd.com/service/players/json/92hydswv9tek/")

players = JSON.parse(playersHash)

players['Players'].each do |player|
  Player.create(
  :active => player['active'].to_i,
  :jersey => player['jersey'].to_i,
  :lname => player['lname'],
  :fname => player['fname'],
  :displayName => player['displayName'],
  :team => player['team'],
  :position => player['position'],
  :height => player['height'],
  :weight => player['weight'].to_i,
  :dob => player['dob'],
  :college => player['college']
  )
end

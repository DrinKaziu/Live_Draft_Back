class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :lname
      t.string :fname
      t.string :displayName
      t.string :team
      t.integer :byeWeek
      t.string :position
      t.integer :positionRank
      t.integer :overallRank

      t.timestamps
    end
  end
end

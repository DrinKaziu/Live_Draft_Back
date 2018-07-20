class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :active
      t.integer :jersey
      t.string :lname
      t.string :fname
      t.string :displayName
      t.string :team
      t.string :position
      t.string :height
      t.integer :weight
      t.string :dob
      t.string :college
      
      t.timestamps
    end
  end
end

class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :team_id
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end

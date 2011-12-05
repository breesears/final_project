class CreateCompetes < ActiveRecord::Migration
  def self.up
    create_table :competes do |t|
      t.integer :event_id
      t.integer :team_id
      t.integer :score

      t.timestamps
    end
  end

  def self.down
    drop_table :competes
  end
end

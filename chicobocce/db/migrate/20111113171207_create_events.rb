class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.string :venue
      t.string :address
      t.string :city
      t.string :state
      t.date :date
      t.time :starttime
      t.time :endtime
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end

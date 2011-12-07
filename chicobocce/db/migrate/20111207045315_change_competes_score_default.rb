class ChangeCompetesScoreDefault < ActiveRecord::Migration
  def self.up
    change_column_default(:competes, :score, 0)
  end

  def self.down
  end
end

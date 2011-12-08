class TeamTotalScoreDefault < ActiveRecord::Migration
  def self.up
    change_column_default(:teams, :totalscore, 0)
  end

  def self.down
  end
end

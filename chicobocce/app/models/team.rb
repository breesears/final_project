class Team < ActiveRecord::Base
  has_many :competes
  has_many :players
end

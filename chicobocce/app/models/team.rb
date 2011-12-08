class Team < ActiveRecord::Base
  has_many :competes
  has_many :players, :dependent => :destroy

  default_scope :order => "name"

 
end

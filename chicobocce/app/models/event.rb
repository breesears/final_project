class Event < ActiveRecord::Base
  has_many :teams
  has_many :competes, :dependent => :destroy

  default_scope :order => :date
end

class Compete < ActiveRecord::Base
  belongs_to :event
  belongs_to :team
end

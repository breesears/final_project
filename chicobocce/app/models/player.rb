class Player < ActiveRecord::Base
   belongs_to :team

   default_scope :order => 'lastname'

   def full_name
     "#{firstname} #{lastname}"
   end

   def to_s
     full_name
   end

end

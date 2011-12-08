class Player < ActiveRecord::Base
   belongs_to :team

   def full_name
     "#{firstname} #{lastname}"
   end

   def to_s
     full_name
   end

end

class PagesController < ApplicationController

  def home
    @events = Event.find(:all, :order => 'date DESC')
    @teams  = Team.find(:all, :order => 'totalscore ASC')
  end

  def contact
  end

end

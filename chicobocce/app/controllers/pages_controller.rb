class PagesController < ApplicationController

  def home
    @events = Event.find(:all, :order => 'date DESC')
  end

  def contact
  end

end

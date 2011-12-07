class CompetesController < ApplicationController
#  before_filter :set_event 
#  before_filter :set_team
 
  def new
     @compete = @event.compete.new
  end

 
  def create
    @compete = @event.competes.new(:score => params[:compete][:score], :event_id => @event.id)
  end
#    if @compete.save
#      redirect_to(@event, :notice => 'Team was added')
#    else
#      redirect_to(@event, :alert  => 'Could not add team')
#    end
#  end

   def update
     @compete = @eventteam.competes.update(:event => event)
   end
   

#  def destroy
#    @compete = competes.find(params[:id])
#    @compete.destroy
#    redirect_to (@team, :notice => 'Score deleted')
#  end

  
  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_team
    @team = Team.find(params[:teamd_id])
  end
end

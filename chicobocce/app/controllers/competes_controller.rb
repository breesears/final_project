class CompetesController < ApplicationController
  before_filter :set_event

  def create
    @compete = @event.competes.new(params[:compete])

    if @compete.save
      redirect_to(@event, :notice => 'Team was added')
    else
      redirect_to(@event, :alert  => 'Could not add team')
    end
  end

  def destroy
    @compete = @team.competes.find(params[:id])

    @compete.destroy

    redirect_to (@team, :notice => 'Score deleted')
  end

  private
  
  def set_event
    @event = Event.find(params[:event_id])
  end


end

class CompetesController < ApplicationController

  def new
  end


#    if @compete.save
#      redirect_to(@event, :notice => 'Team was added')
#    else
#      redirect_to(@event, :alert  => 'Could not add team')
#    end
#  end

   def update
     @compete = Compete.find(params[:id])
     if @compete.update_attributes(params[:compete])
#        updatetotalscore(@compete)
        redirect_to(@compete.event, :notice => 'Score added')
     end

   end
   

#  def destroy
#    @compete = competes.find(params[:id])
#    @compete.destroy
#    redirect_to (@team, :notice => 'Score deleted')
#  end

  


#   def updatetotalscore(compete)
#      compete.team.totalscore += compete.score    
#   end

end

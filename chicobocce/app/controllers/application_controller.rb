class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected 
 
  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "You must be logged in to access this page"
      redirect_to(:controller => 'sessions', :action => 'new')
      return false
    else
      return true
    end
  end


end


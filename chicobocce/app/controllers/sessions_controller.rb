class SessionsController < ApplicationController
  before_filter :confirm_logged_in, :except => [:login, :create, :logout]

  def new
  end

  def create
    user = User.authenticate(params[:session][:username],
                                        params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid username/password combination"
      render 'new'
    else
      session[:user_id] = user.id
      session[:username] = user.username
      flash[:notice] = "Logged in" 
      redirect_to user 
    end
  end

  def logout
    session[:user_id]  = nil
    session[:username] = nil
    flash[:notice] = "You have been logged out"
    redirect_to(:action => "login")
  end
 
 private 

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "You must be logged in to access this page"
      redirect_to(:action => 'login')
      return false
    else
      return true
    end
  end
 
  def destroy
  end

end

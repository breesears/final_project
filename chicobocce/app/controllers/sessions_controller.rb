class SessionsController < ApplicationController
  before_filter :confirm_logged_in, :except => [:new, :create, :logout]

  def index
    menu
    render('menu')
  end

  def menu
  end
  
  def new
  end

  def login
  end

  def create
    user = User.authenticate(params[:session][:username],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid username/password combination"
      render 'new'
    else
      session[:user_id]   = user.id
      session[:username]  = user.username
      flash[:notice]      = "Logged in" 
      redirect_to(:action => 'menu') 
    end
  end

  def destroy
    session[:user_id]   =  nil
    session[:username]  =  nil
    flash[:notice]      =  "You have been logged out"
    redirect_to(:action => "new")
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
end

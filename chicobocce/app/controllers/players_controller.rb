class PlayersController < ApplicationController
  before_filter :confirm_logged_in
  
# GET /players
  def index
    @players = Player.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /players/1
  def show
    @player = Player.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /players/new
  def new
    @player = Player.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /players/1/edit
  def edit
    @player = Player.find(params[:id])
  end

  # POST /players
  def create
    @player = Player.new(params[:player])

    respond_to do |format|
      if @player.save
        format.html { redirect_to(@player, :notice => 'Player was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /players/1
  def update
    @player = Player.find(params[:id])

    respond_to do |format|
      if @player.update_attributes(params[:player])
        format.html { redirect_to(@player, :notice => 'Player was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /players/1
  def destroy
    @player = Player.find(params[:id])
    @player.destroy

    respond_to do |format|
      format.html { redirect_to(players_url) }
    end
  end
end

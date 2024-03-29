class TeamsController < ApplicationController
  before_filter :confirm_logged_in, :except => [:index, :show]

  # GET /teams
  def index
    @teams = Team.all
  end

  # GET /teams/1
  def show
    @team = Team.find(params[:id])
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
    @team = Team.find(params[:id])
  end

  # POST /teams
  def create
    @team = Team.new(params[:team])

    respond_to do |format|
      if @team.save
        format.html { redirect_to(teams_path, :notice => 'Team was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /teams/1
  def update
    @team = Team.find(params[:id])
    
    respond_to do |format|
      if @team.update_attributes(params[:team])
         format.html { redirect_to(@team, :notice => 'Team was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /teams/1
  def destroy
    @team = Team.find(params[:id])
    @team.destroy

    respond_to do |format|
      format.html { redirect_to(teams_url) }
    end
  end
end

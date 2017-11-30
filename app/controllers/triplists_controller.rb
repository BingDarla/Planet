class TriplistsController < ApplicationController
  before_action :check_if_logged_in

  def index
    user = @current_user
    @triplists = user.triplists
  end


  def new
    @triplist = Triplist.new

  end

  def create
    triplist = Triplist.create :name => params[:triplist][:name]
    @current_user.triplists << triplist
    redirect_to user_triplists_path(@current_user)

  end
  def destroy
    triplist = Triplist.find params[:id]
    triplist.delete
    redirect_to user_triplists_path(@current_user)

  end


  def add
    user = @current_user
    @triplist = user.triplists.find params['triplist_id']
    sight = Sight.find params['sight_id']

    if !@triplist.sights.exists?(params[:sight_id])
    @triplist.sights << sight
    end
    redirect_to user_triplists_path

  end

  def remove
    user = @current_user
    @triplist = user.triplists.find params['triplist_id']
    sight = Sight.find params['sight_id']
    @triplist.sights.delete(sight)
    redirect_to user_triplists_path
  end



end

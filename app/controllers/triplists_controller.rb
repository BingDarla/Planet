class TriplistsController < ApplicationController
  def edit
  end

  def show
    user = @current_user
    @triplists = user.triplists
  end
end

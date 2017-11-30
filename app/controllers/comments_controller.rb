class CommentsController < ApplicationController
  before_action :check_if_logged_in
  def new
    @country = Country.find params[:country_id]
    @sight = @country.sights.find params[:sight_id]
    @comment = Comment.new
  end

  def create
    # make sure the user is actually logged in
    @country = Country.find params[:country_id]
    @sight = @country.sights.find params[:sight_id]
    comment = @sight.comments.create :content => params[:comment][:content]
    # raise 'hell'
    @current_user.comments << comment
    redirect_to country_path(@country)
  end

  def delete
  end
end

class CommentsController < ApplicationController
  def new
    @sight = Sight.find params[:sight_id]
    @comment = Comment.new
  end

  def create
    # TODO: make sure the user is actually logged in
    @sight = Sight.find params[:sight_id]
    comment = @sight.comments.create :content => params[:comment][:content]
    @current_user.comments << comment
    redirect_to @sight
  end

  def delete
  end
end

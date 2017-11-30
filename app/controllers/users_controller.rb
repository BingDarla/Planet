class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = @current_user
    user.update user_params
    redirect_to root_path

  end

  def index
    if params[:term]
      @users= User.where('name LIKE ?', "%#{params[:term]}%")
      if @users.count==0
       @users=User.where('email LIKE ?', "%#{params[:term]}%")
     end
   else
    User.all
  end
  end


private
def user_params
  params.require(:user).permit(:name, :email, :password,:dob, :password_confirmation, :term)

end


end

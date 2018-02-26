class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # @user = User.new user_params
    #
    # return render action: 'new' unless @user.save
    # session[:user_id] = user.id
    # redirect_to root_path, notice: 'Created user'

    user = User.new user_params
    if user.save
          session[:user_id] = user.id
          redirect_to galleries_path  
        else
          redirect_to root_path
        end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end

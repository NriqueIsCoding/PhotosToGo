class SessionsController < ApplicationController

  def new

  end

  def create
    # @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
    #
    # return render action: 'new' unless @user
    #
    # # logged in, hooray
    # session[:user_id] = @user.id
    # redirect_to new_gallery_path

    @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])

    if @user
      session[:user_id] = @user.id
      
      redirect_to galleries_path
    else
      redirect_to login_path, notice: "User not found. Please try again."
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to root_path
  end

end

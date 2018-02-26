class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :current_gallery

  def current_user
    @user ||= User.find_by(id: session[:user_id])
  end

  # def current_gallery
  #   @gallery ||= current_user.galleries.find(params[:id])
  # end

  def require_logged_in
      return true if current_user 

      return redirect_to root_path
  end

end

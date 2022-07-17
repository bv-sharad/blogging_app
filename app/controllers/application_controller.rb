class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
  helper_method :current_user, :current_name
  
	before_action :update_allowed_parameters, if: :devise_controller?

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
			#@current_name ||= session[:user_id]
    end
  end

	 def current_name
    if session[:user_id]
      #@current_user ||= User.find(session[:user_id])
      @current_name ||= session[:email]
    end
  end 

	 def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:admin, :email, :password)}
     devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:admin, :email, :password, :current_password)}
  end
end

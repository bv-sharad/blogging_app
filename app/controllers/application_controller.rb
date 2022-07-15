class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
  helper_method :current_user, :current_name

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
	 def is_admin
		 if session[:user_id]
      #@current_user ||= User.find(session[:user_id])
      @is_admin ||= session[:is_admin]
    end
	 end
end

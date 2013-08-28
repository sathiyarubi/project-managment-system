class ApplicationController < ActionController::Base
  protect_from_forgery

rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

helper_method :current_user
before_filter :check_session

def current_user
  @current_user ||= Employee.find(session[:user_id]) if session[:user_id]
end

def check_session
	unless current_user.present?
		redirect_to root_path
	end

end

end

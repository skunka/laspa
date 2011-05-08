class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all

  def get_user
    @current_user = current_user
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = exception.message
    redirect_to root_url
  end
end

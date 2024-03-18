class ApplicationController < ActionController::Base
  private   
  def current_user   
    @current_user = session[:user_id].present? ? User.find(session[:user_id]) : nil   
  end   
  helper_method :current_user   
end

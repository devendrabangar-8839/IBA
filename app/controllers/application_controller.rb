class ApplicationController < ActionController::Base
  def current_user
    user = get_current_user(session[:user_id])
  end

  private   
  def get_current_user(id)
    id.present? ? User.find(id) : nil   
  end   
  helper_method :current_user   
end

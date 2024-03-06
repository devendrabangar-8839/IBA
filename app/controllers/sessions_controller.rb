class SessionsController < ApplicationController
  def new
  end

  def create
    login_user = User.find_by(email: params['email'], password: params['password'])
    if login_user
      session[:user_id] = login_user.id
      redirect_to users_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil   
    redirect_to root_url   
  end
end

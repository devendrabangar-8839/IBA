class SessionsController < ApplicationController
  def new
  end

  def create
    login_user = User.find_by_email(params['email'])

  end
end

class UsersController < ApplicationController
  before_action :current_user
  def index
    @users = User.all    
  end

  def show
  end
end

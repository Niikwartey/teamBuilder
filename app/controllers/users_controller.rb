class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def index
    
  end

  def show
    @user = User.find_by(id: params[:id])
    return redirect_to users_path unless @user
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
  end
end

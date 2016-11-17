class UsersController < ApplicationController
  def index
    
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user, adapter: :json
  end
end

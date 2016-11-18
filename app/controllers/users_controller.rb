class UsersController < ApplicationController
  def index

  end

  def show
    @user = User.find_by(id: params[:id])
    return redirect_to users_path unless @user == current_user
    respond_to do |format|
      format.html {} # implicit rendering
      format.json do
        # render user, including all owned projects and projects
        render json: @user, adapter: :json
      end
    end
  end
end

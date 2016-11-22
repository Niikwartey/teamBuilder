class UsersController < ApplicationController
  def index

  end

  def show
    @user = User.find_by(id: params[:id])
    @matches = @user.project_matches
    if @user.personality
      @personality_type = @user.personality.type
      @personality_url = @user.personality.type_url
    else
      @personality_type = "Take the Test"
      @personality_url = "/personalities/new"
    end
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

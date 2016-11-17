class ProjectsController < ApplicationController
  before_action :set_manager, only: [:new, :create]
  def index
    
  end

  def show

  end

  def new
    @project = @manager.owned_projects.build
    @questions = Question.all
  end

  def create
    @project = @manager.owned_projects.build(project_params)
    if @project.save
      redirect_to user_projects_path
    else
    binding.pry
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_manager
    @manager = User.find_by(id: params[:user_id])
  end

  def set_project
    @project = Project.find_by(id: params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, question_ids: [])
  end
end

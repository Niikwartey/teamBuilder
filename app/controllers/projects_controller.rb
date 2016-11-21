class ProjectsController < ApplicationController
  before_action :set_manager, only: [:new, :create, :index, :public]
  before_action :set_project, only: [:show]

  def index
    @projects = Project.all
  end

  def show
        # if current_user.id = params[:user_id]
    @manager = User.find_by(id: params[:user_id])
    @project = Project.find_by(id: params[:id])

    @matches = []

    @project.survey.responses.each do |resp|
      q = resp.question

      @matches << q.member_responses.where(answer: resp.answer)
      @matches.flatten.delete_if { |x| x.user_id == current_user.id }
    end
  end

  def public
    @projects = @manager.owned_projects
  end

  def new
    @project = @manager.owned_projects.build
    # @questions = Question.all
    @survey = Survey.new

    @survey.questions = Question.all
    @responses = @survey.responses
    @checkboxes = (1..5).to_a
    # @questions.each do |q|
    #   @survey.responses.build(question_id: q.id, user_id: current_user.id)
    # end
  end

  def create
    @manager = current_user
    @project = @manager.owned_projects.build(project_params)
    @project.save
    @survey = Survey.create(project_id: @project.id)

    survey_params.values.each do |resp|
      x = Response.new(question_id: resp[:question_id], answer: resp[:answer], importance: resp[:importance], user_id: current_user.id)
      @survey.responses << x
    end
    @survey.save
    if @project.save
      redirect_to user_project_path(current_user, @project)
    else
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
    params.require(:project).permit(:name, :description)
  end

  def survey_params
    params[:project][:survey][:responses_attributes]
  end

end

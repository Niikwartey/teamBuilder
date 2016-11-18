class SurveysController < ApplicationController
  before_action :authenticate_user!
  def new
    if !current_user.responses.empty?
      redirect_to projects_path
    end
    @survey = Survey.new
    @questions = Question.all
    @questions.each do |q|
      @survey.responses.build(question_id: q.id, user_id: current_user.id)
    end
    @checkboxes = (1..5).to_a
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.valid?
      @survey.save
      redirect_to projects_path
    else
      @questions = Question.all
      @checkboxes = (1..5).to_a
      render 'new'
    end
  end

  private

  def survey_params
    params.require(:survey).permit(:responses_attributes => [:answer, :user_id, :importance, :question_id])
  end

end

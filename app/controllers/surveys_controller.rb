class SurveysController < ApplicationController
  before_action :authenticate_user!
  def new
    @survey = Survey.new
    @questions = Question.all
    @questions.each do |q|
      @survey.responses.build(question_id: q.id, user_id: 1)
    end
    @checkboxes = (1..5).to_a
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to root_path
    else
      @survey = Survey.new
      render 'new'
    end
  end

  private

  def survey_params
    params.require(:survey).permit(:responses_attributes => [:answer, :user_id, :importance, :question_id])
  end

end

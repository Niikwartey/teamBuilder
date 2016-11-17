class SurveysController < ApplicationController

  def new
    @survey = Survey.new
    @questions = Question.all
    @questions.each do |q|
      @survey.responses.build(question_id: q.id)
    end
    @checkboxes = (1..5).to_a
  end

  def create
    byebug
  end


end

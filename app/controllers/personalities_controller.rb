class PersonalitiesController < ApplicationController

  def new
    @personality = Personality.new
    @personality_questions = Personality.questions
  end

  def create
    @personality = Personality.new(personality_params)
    if @personality.save
      redirect_to user_path(current_user)
    else
      @personality = Personality.new
      @personality_questions = Personality.questions
      render 'new'
    end
  end

  def edit
    @personality = Personality.find(params[:id])
    @personality_questions = Personality.questions
  end

  def update
    @personality = Personality.find(params[:id])
    @personality.update(personality_params)
    redirect_to user_path(current_user)
  end

  private

  def personality_params
    params.require(:personality).permit(:user_id, :intro_extroversion, :sensing_intuition, :thinking_feeling, :judging_perceiving)
  end

end

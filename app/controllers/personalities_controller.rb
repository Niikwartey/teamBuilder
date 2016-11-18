class PersonalitiesController < ApplicationController

  def new
    @personality = Personality.new
  end

  def create
    byebug
    @personality = Personality.create(personality_params)
  end

  private

  def personality_params
    params.require(:personality).permit(:user_id, :intro_extroversion, :sensing_intuition, :thinking_feeling, :judging_perceiving)
  end

end

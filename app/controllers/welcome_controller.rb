class WelcomeController < ApplicationController

  def index

  end

  def home
    if current_user && current_user.responses.empty?
      redirect_to new_survey_path
    elsif current_user
      redirect_to projects_path
    end
  end

end

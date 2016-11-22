class DropSurveyIdFromProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :survey_id, :integer
  end
end

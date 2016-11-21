class AddSurveyIdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :survey_id, :integer
  end
end

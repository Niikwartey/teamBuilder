class AddProjectIdToSurvey < ActiveRecord::Migration[5.0]
  def change
    add_column :surveys, :project_id, :integer
  end
end

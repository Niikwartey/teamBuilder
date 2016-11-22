class DropColumnProjectIdFromSurveys < ActiveRecord::Migration[5.0]
  def change
    remove_column :surveys, :project_id, :integer
  end
end

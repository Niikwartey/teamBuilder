class UpdateQuestionIdsInProjects < ActiveRecord::Migration[5.0]
  def change
    change_column :projects, :question_ids, :integer, array: true, default: '{}'
  end
end

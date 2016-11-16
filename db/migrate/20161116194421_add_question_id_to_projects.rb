class AddQuestionIdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :question_ids, :integer, array: true 

  end
end

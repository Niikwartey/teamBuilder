class AddSurveyIdToResponses < ActiveRecord::Migration[5.0]
  def change
    add_column :responses, :survey_id, :integer
  end
end

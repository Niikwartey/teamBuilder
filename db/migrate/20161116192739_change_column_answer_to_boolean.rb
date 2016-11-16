class ChangeColumnAnswerToBoolean < ActiveRecord::Migration[5.0]
  def change
    change_column :responses, :answer, "boolean USING CAST (answer AS boolean)"
  end
end

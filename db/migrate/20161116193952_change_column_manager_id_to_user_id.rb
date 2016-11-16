class ChangeColumnManagerIdToUserId < ActiveRecord::Migration[5.0]
  def change
    rename_column :responses, :manager_id, :user_id
  end
end

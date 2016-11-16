class DropMemberIdFromResponses < ActiveRecord::Migration[5.0]
  def change
    remove_column :responses, :member_id
  end
end

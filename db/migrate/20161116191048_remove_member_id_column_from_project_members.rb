class RemoveMemberIdColumnFromProjectMembers < ActiveRecord::Migration[5.0]
  def change
    remove_column :project_members, :member_id
  end
end

class AddStatusToProjectMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :project_members, :status, :string
  end
end

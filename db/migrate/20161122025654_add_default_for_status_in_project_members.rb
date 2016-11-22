class AddDefaultForStatusInProjectMembers < ActiveRecord::Migration[5.0]
  def change
    change_column :project_members, :status, :string, default: "pending"
  end
end

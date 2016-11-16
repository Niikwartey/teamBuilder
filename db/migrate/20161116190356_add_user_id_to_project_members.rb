class AddUserIdToProjectMembers < ActiveRecord::Migration[5.0]
  def change
    add_reference :project_members, :user, foreign_key: true
  end
end

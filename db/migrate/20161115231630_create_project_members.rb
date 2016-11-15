class CreateProjectMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :project_members do |t|
      t.integer :project_id
      t.integer :member_id

      t.timestamps
    end
  end
end

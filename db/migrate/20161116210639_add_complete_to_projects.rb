class AddCompleteToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :complete, :boolean, default: false
  end
end

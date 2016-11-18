class DropPersonality < ActiveRecord::Migration[5.0]
  def change
    drop_table :personalities
  end
end

class CreatePersonalities < ActiveRecord::Migration[5.0]
  def change
    create_table :personalities do |t|
      t.integer :user_id
      t.string :intro_extroversion
      t.string :sensing_intuition
      t.string :thinking_feeling
      t.string :judging_perceiving
    end
  end
end

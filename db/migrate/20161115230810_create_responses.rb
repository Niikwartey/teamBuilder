class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.integer :member_id
      t.integer :manager_id
      t.text :answer
      t.integer :importance
      t.integer :question_id

      t.timestamps
    end
  end
end

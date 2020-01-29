class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :body
      t.integer :answer_id
      t.string :note
      t.integer :catrgory_id

      t.timestamps
    end
  end
end

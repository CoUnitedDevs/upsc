class ModifyQuestionFields < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :catrgory_id, :integer
    add_column :questions, :category_id, :integer
    add_column :questions, :question_type, :string
  end
end

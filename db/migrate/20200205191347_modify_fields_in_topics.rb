class ModifyFieldsInTopics < ActiveRecord::Migration[5.2]
  def change
    remove_column :topics, :category_id, :integer
    add_column :topics, :category, :string
  end
end

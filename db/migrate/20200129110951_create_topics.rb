class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :name
      t.text :topics_covered
      t.integer :created_by
      t.text :body
      t.integer :current_affairs_id
      t.integer :category_id

      t.timestamps
    end
  end
end

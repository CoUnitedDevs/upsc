class ModifyTopicFields < ActiveRecord::Migration[5.2]
  def change
    remove_column :topics, :current_affairs_id, :integer
    add_column :topics, :current_affair_id, :integer
  end
end

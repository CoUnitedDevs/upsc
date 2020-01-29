class CreateCurrentAffairs < ActiveRecord::Migration[5.2]
  def change
    create_table :current_affairs do |t|
      t.string :name
      t.date :post_on

      t.timestamps
    end
  end
end

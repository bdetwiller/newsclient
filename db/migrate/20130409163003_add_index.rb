class AddIndex < ActiveRecord::Migration
  def change
    add_index :comments, :parent_id
    add_index :comments, :user_id
    add_index :posts, :user_id
  end
end

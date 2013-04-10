class RemoveParentId < ActiveRecord::Migration
  def change
    create_table :comment_ancestries do |t|
      t.integer :parent_id
      t.integer :comment_id

      t.timestamps
    end

    add_index :comment_ancestries, :parent_id
    add_index :comment_ancestries, :comment_id


    remove_column :comments, :parent_id

  end
end

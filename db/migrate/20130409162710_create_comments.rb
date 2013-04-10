class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :parent_id
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end

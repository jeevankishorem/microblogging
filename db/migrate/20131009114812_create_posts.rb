class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :user_id , index: true
      t.integer :discussion_id

      t.timestamps
      t.index [:user_id, :created_at]
    end
  end
end

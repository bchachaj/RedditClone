class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :content
      t.string :url
      t.integer :sub_id, null: false
      t.integer :author_id, null: false
      
      t.timestamps null: false
    end
  end
end

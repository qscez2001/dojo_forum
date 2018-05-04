class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :image
      t.boolean :status
      t.integer :authority
      t.integer :replies_count
      t.integer :viewed_count

      t.integer :user_id
      t.timestamps
    end

    add_index :posts, :user_id
  end
end

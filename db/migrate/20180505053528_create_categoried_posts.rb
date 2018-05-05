class CreateCategoriedPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :categoried_posts do |t|
      t.integer :post_id
      t.integer :category_id
      t.timestamps
    end
    add_index :categoried_posts, :post_id
    add_index :categoried_posts, :category_id
  end
end

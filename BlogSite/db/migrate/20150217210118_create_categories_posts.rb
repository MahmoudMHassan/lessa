class CreateCategoriesPosts < ActiveRecord::Migration
  def change
    create_table :categories_posts do |t|
      t.integer :post_id
      t.integer :category_id

      t.timestamps null: false
    end
        remove_column :categories_posts, :id
    execute "alter table categories_posts add primary key(post_id, category_id)"
  end
end

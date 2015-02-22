class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :text
      t.integer :aid
      t.string :title

      t.timestamps null: false
    end
  end
  
  def self.down
    drop_table :posts
  end

end

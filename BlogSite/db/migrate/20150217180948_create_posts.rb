class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :aid
      t.string :title
      t.string :text

      t.timestamps null: false
    end
  end
    def self.down
    drop_table :posts
  end
  
end

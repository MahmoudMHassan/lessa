class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.integer :aid
      t.integer :uid

      t.timestamps null: false
    end
    remove_column :blocks, :id
    execute "alter table blocks add primary key(uid)"
  end
  
  def self.down
    drop_table :blocks
  end
  
end

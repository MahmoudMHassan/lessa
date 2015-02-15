class CreateEmbeds < ActiveRecord::Migration
  def change
    create_table :embeds do |t|
      t.integer :pid
      t.integer :iid

      t.timestamps null: false
    end
     remove_column :embeds, :id
    execute "alter table embeds add primary key(pid,iid)"
  end
  
  def self.down
    drop_table :embeds
  end
  
end

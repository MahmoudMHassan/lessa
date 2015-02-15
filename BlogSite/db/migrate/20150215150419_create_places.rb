class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.integer :meid
      t.integer :cid
      t.integer :pid

      t.timestamps null: false
    end
    remove_column :places, :id
    execute "alter table places add primary key(cid, pid, meid)"
  end
  
  def self.down
    drop_table :places
  end
  
end

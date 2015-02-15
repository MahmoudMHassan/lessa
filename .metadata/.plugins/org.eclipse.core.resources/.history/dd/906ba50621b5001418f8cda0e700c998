class CreateCocs < ActiveRecord::Migration
  def self.up
    create_table :cocs do |t|
      t.integer :ocid
      t.integer :mcid
      t.integer :meid

      t.timestamps null: false
    end
    remove_column :cocs, :id
    execute "alter table cocs add primary key(ocid, mcid, meid)"
  end
  
  
  def self.down
    drop_table :students
    
  end
  
end

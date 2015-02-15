class CreateProfilePics < ActiveRecord::Migration
  def change
    create_table :profile_pics do |t|
      t.integer :meid
      t.integer :iid

      t.timestamps null: false
    end
    remove_column :profile_pics, :id
    execute "alter table profile_pics add primary key(meid)"
  end
  
    def self.down
    drop_table :profile_pics
  end 
  
end

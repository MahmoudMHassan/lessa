class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer :meid
      t.integer :pid
      t.integer :cid

      t.timestamps null: false
    end
    remove_column :places, :id
    execute "alter table places add primary key(meid,pid,cid)"
  end
end

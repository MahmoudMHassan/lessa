class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name
      t.integer :pid

      t.timestamps null: false
    end
    remove_column :categories, :id
    execute "alter table categories add primary key(pid, name)"
  end
  def self.down
    drop_table :categories
  end
  
end

class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :pid
      t.string :name

      t.timestamps null: false
    end
    remove_column :categories, :id
    execute "alter table categories add primary key(pid, name)"
  end
    def self.down
    drop_table :categories
  end
end

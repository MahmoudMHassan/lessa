class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :auid

      t.timestamps null: false
    end
  end
  
    def self.down
    drop_table :comments
  end
  
  
end

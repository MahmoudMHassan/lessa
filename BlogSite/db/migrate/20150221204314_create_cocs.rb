class CreateCocs < ActiveRecord::Migration
  def change
    create_table :cocs do |t|
      t.text :text
      t.integer :auid

      t.timestamps null: false
    end
  end
end

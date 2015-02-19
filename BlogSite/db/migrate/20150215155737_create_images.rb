class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.binary :data, :limit => 1.megabyte
      t.string :filename
      t.string :mime_type

      t.timestamps null: false
    end
  end
    def self.down
    drop_table :photos
  end
end

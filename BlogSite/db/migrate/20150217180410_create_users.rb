class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.timestamps null: false
    end
  end
    def self.down
    drop_table :users
  end
end

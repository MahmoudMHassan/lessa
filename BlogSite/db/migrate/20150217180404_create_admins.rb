class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|

      t.timestamps null: false
    end
  end
    def self.down
    drop_table :admins
  end
end

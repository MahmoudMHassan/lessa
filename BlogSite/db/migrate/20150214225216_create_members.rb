class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password
      t.date :DOB

      t.timestamps null: false
    end
  end
end

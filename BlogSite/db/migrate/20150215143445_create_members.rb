class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :email
      t.string :password
      t.string :fname
      t.string :lname
<<<<<<< HEAD:BlogSite/db/migrate/20150217180346_create_members.rb
      t.date :DOB 
      t.string :signature
    #  t.integer :iid
=======
      t.date :DOB
      t.string :signature
>>>>>>> 7cbedecfff6f28d1739620dbcac54d27648453ae:BlogSite/db/migrate/20150215143445_create_members.rb

      t.timestamps null: false
    end
  end
  
    def self.down
    drop_table :members
  end
  
end

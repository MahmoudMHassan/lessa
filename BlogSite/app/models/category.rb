class Category < ActiveRecord::Base
<<<<<<< HEAD
=======
   require 'composite_primary_keys'
   self.primary_keys = :pid, :name
   has_and_belongs_to_many :posts
>>>>>>> 2cfd991f7903704f61d180d36630835d532401e2
end

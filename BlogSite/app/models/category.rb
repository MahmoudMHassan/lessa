class Category < ActiveRecord::Base
   require 'composite_primary_keys'
   self.primary_keys = :pid, :name
   has_and_belongs_to_many :posts
end

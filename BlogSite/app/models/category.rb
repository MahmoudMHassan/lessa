class Category < ActiveRecord::Base
 require 'composite_primary_keys'
 set_primary_keys :pid, :name
 has_and_belongs_to_many :post ,dependent: :delete_all
end

class Member < ActiveRecord::Base
   has_one :image 
   has_many :comments
end

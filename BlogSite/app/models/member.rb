class Member < ActiveRecord::Base
   has_one :image 
   has_many :comments
   has_many :comments,through: :coc 
   has_one :user
   has_one :admin
end

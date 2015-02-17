class Comment < ActiveRecord::Base
 
  belongs_to :member
  has_many :posts
  has_many :comments
  has_many :comments, through: :coc
end

class Post < ActiveRecord::Base
  has_many :images
  belongs_to :admin 
  has_many :comments
  has_many :category
end

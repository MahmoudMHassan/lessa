class Post < ActiveRecord::Base
  has_many :images
  belongs_to :admin 
  has_many :comments
  has_many :category
  validates :title, presence: true, length: { minimum: 5}
  validates :text, presence: true
end

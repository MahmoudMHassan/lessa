class Post < ActiveRecord::Base
   belongs_to :admin 
  has_many :comments, through: :places
  has_one :member, through: :places
  has_and_belongs_to_many :category
  validates :title, presence: true, length: { minimum: 5}
  validates :text, presence: true
  
  mount_uploader :postimage ,PostimageUploader 
end

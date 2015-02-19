class Post < ActiveRecord::Base
   belongs_to :admin 
  has_many :comments, through: :places
  has_one :member, through: :places
  has_many_and_belongs_to :category
  validates :title, presence: true, length: { minimum: 5}
  validates :text, presence: true
end

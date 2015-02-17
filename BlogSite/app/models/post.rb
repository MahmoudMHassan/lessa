class Post < ActiveRecord::Base
  has_and_belongs_to_many :category
  belongs_to :admin
  has_many :comment, through: :places
  has_one :member, through: :places
end

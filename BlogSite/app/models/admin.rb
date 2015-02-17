class Admin < ActiveRecord::Base
  has_many :posts
  has_many :users
  belongs_to :member
end

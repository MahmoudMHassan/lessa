class Member < ActiveRecord::Base
  has_one :user
  has_one :admin
  has_one :image
  has_many :comment, through: :place
  has_many :comment, through: :coc
  has_one :comment, through: :coc
  has_many :post, through: :place
end

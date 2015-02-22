class Admin < ActiveRecord::Base
 belongs_to :member ,dependent: :delete
 has_many :user, through: :blocks
 has_many :post
end

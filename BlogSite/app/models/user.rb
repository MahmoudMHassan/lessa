class User < ActiveRecord::Base
  belongs_to :member ,dependent: :delete_all
  has_one :admin, through: :blocks
end

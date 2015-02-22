class User < ActiveRecord::Base
  belongs_to :member ,dependent: :delete
  has_one :admin, through: :blocks

end

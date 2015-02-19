class Image < ActiveRecord::Base
  belongs_to :member ,dependent: :delete_all
  has_one :post, through: :embed
end

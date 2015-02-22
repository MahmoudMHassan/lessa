class Comment < ActiveRecord::Base
 has_one :member, through: :place
 has_one :post, through: :place
 has_many :comment, through: :coc
 has_one :comment, through: :coc
 has_one :member, through: :coc
end

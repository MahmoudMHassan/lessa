class Block < ActiveRecord::Base
   belongs_to :admin
    belongs_to :user ,dependent: :delete_all
end

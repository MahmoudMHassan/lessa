class User < ActiveRecord::Base
  belongs_to :admin
  belongs_to :member
  

end

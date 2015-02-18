class User < ActiveRecord::Base
  belongs_to :admin
  belongs_to :member
  
  def self.login?(email, password)
    member = Member.where(email: email).take
    if member.count !=0
      if member.password == password
        return true
      end
    end
    return false
  end
end

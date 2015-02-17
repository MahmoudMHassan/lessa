class Member < ActiveRecord::Base
   has_one :image 
   has_many :comments
   has_many :comments,through: :coc 
   has_one :user
   has_one :admin
     def self.login?(email, password)
    member = Member.where(email: email).take
    if member != nil
      if member.password == password
        return true
      end
    end
    return false
  end
end

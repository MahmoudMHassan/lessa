class Member < ActiveRecord::Base
<<<<<<< HEAD

    
     
  has_one :user
  has_one :admin
  has_one :image
  has_many :comment, through: :place
  has_many :comment, through: :coc
  has_one :comment, through: :coc
  has_many :post, through: :place
   validates_uniqueness_of :email
=======
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
  
>>>>>>> 7cbedecfff6f28d1739620dbcac54d27648453ae
end

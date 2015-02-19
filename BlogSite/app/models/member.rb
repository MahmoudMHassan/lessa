class Member < ActiveRecord::Base
  has_one :user
  has_one :admin
  has_one :image
  has_many :comment, through: :place
  has_many :comment, through: :coc
  has_one :comment, through: :coc
  has_many :post, through: :place
  validates_uniqueness_of :email
  validates :fname, presence: true
  validates :signature, presence: true
  validates :password, presence: true
  
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

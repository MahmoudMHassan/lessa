class MemberController < ApplicationController
  def new 
    @member=Member.new
  end
  def sign_up
 #  Member.where("email = ?",params[:email]).first_or_create(:locked => false)
 #Member.find_or_create_by(email: params[:email])
 @member = Member.new(params.require(:member).permit(:email, :password ,:fname , :lname, :DOB , null))
 #@member = Member.new(params[:member])
    @member.save
  end

  def login
    
  end
end

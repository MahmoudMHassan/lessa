class MembersController < ApplicationController
   # def show
     # @member=Member.find(params[:id])
    #end
    def new 
   @member = Member.new
 end
 
  def create
 #  Member.where("email = ?",params[:email]).first_or_create(:locked => false)
 #Member.find_or_create_by(email: params[:email])
  #@member=Member.new
 @member = Member.new(params.require(:member).permit(:email, :password , :fname , :lname, :DOB, :signature))
    @member.save
    redirect_to @member
  end

  def login
    
  end
  
end
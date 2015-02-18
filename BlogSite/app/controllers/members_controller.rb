class MembersController < ApplicationController
  def show
    @member = Member.find(params[:id])
  end
  def sign_up 
    @member=Member.new
  end
  def create
 #  Member.where("email = ?",params[:email]).first_or_create(:locked => false)
 #Member.find_or_create_by(email: params[:email])
 @member = Member.new(params.require(:member).permit(:email, :password ,:fname , :lname, :DOB , :signature))
 #@member = Member.new(params[:member])
    @member.save
    log_in @member
    redirect_to @member
  end

 def edit
   
 end
 def update
   @member = Member.find(params[:id])
   if params[:member][:old_password] == @member.password
     if params[:member][:password]==""
       params[:member][:password]=params[:member][:old_password]
       self.current_user.update(params[:member].permit(:email, :password ,:fname , :lname, :DOB , :signature))
     else
       self.current_user.update(params[:member].permit(:email, :password ,:fname , :lname, :DOB , :signature))
     end
   redirect_to self.current_user
   else
     redirect_to "/members/#{params[:id]}/edit"
   end
 end
end

class MembersController < ApplicationController
  def signup
    @member = Member.new(params.require(:member).permit(:email, :password , :fname , :lname, :DOB, :signature))
    if  @member.save
      log_in @member
      redirect_to "/members/#{@member.id}"
    else
    # flash[:notice] = "Email must be unique"
    #redirect_to @member
      #flash.now.alert ="Email must be unique"

    end
  end

  def create

  end

  def show
    @member = Member.find(params[:id])
  end

  def self.login?(email, password)
    member = Member.where(email: email).take
    if member != nil
      if member.password == password
      return true
      end
    end
    return false
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

class MembersController < ApplicationController
  def signup
    @member = Member.new(params.require(:member).permit(:email, :password , :fname , :lname, :DOB, :signature))
    if  @member.save
      @user = User.new(id: @member.id)
      @user.save
      log_in @member
      redirect_to "/members/#{@member.id}"
    else
    render 'create'

    end
  end
  def blockuser
   if Member.exists?(email: params[:block][:email])
    temp = Member.where(email: params[:block][:email]).first
     @blocked =  Blockeduser.new(id: temp.id)
    @blocked.save
   redirect_to "/members/#{temp.id}"
   else
     render 'block'
   end
    
  end
  def unblockuser
    if Member.exists?(email: params[:unblock][:email]) && Blockeduser.exists?(Member.find_by_email(params[:unblock][:email]).id)
       temp = Member.where(email: params[:unblock][:email]).first
      Blockeduser.find(temp.id).destroy
      redirect_to "/members/#{temp.id}"
    else
      render 'unblock'
    end
  end
  def block
    
  end
  def unblock
    
  end
  def delete
    
  Member.find(self.current_user.id).destroy
  User.find_by_id(self.current_user.id).destroy if User.find_by_id(self.current_user.id)!=nil
  Admin.find_by_id(self.current_user.id).destroy if Member.find_by_id(self.current_user.id)!=nil
  #Post.find_by_aid(self.current_user.id).destroy
  #Comment.find_by_cid(self.current_user.id).destroy
  sign_out
  redirect_to root_path
  end
  def create
@member = Member.new
  end
  def add
    
  end
  def authorize
    if Member.exists?(email: params[:add][:email])
    temp = Member.where(email: params[:add][:email]).first
    @admin = Admin.new(id: temp.id)
    @admin.save
   redirect_to "/members/#{temp.id}"
   else
     render 'add'
   end
  end

  def show
    if Member.exists?(params[:id])
    @member = Member.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if params[:member][:old_password] == @member.password
      if params[:member][:password]==""
        params[:member][:password]=params[:member][:old_password]
        if @member.update(params[:member].permit(:email, :password ,:fname , :lname, :DOB , :signature))
          redirect_to "/members/#{params[:id]}"
        else
          render 'edit'
        end
      else
       if @member.update(params[:member].permit(:email, :password ,:fname , :lname, :DOB , :signature))
         redirect_to "/members/#{params[:id]}"
         else
          render 'edit'
        end
      end
      
    else
     render 'edit'
    end
  end
end

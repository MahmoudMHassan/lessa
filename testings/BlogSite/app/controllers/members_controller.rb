class MembersController < ApplicationController
  def signup
    @member = Member.new(params.require(:member).permit(:email, :password , :fname , :lname, :DOB, :signature ,:image))
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
    @blockedblock = false
    @wrongblock = false
    @blankblock = false
      if params[:block][:email] == ""
       @blankblock = true
      render 'block'
      return
   elsif Member.exists?(email: params[:block][:email]) && !Blockeduser.exists?(Member.find_by_email(params[:block][:email]).id)
    temp = Member.where(email: params[:block][:email]).first
     @blocked =  Blockeduser.new(id: temp.id)
    @blocked.save
   redirect_to "/members/#{temp.id}"
   return
   elsif Member.find_by_email(params[:block][:email])!=nil && Blockeduser.exists?(Member.find_by_email(params[:block][:email]).id)
     @blockedblock = true
     render 'block'
     return
   elsif !Member.exists?(email: params[:block][:email])
  @wrongblock = true
     render 'block'
     return
   end
    
  end
  def unblockuser
    @blockedunblock = false
    @wrongunblock = false
    @blankunblock = false
    if params[:unblock][:email] == ""
       @blankunblock = true
      render 'unblock'
      return
    elsif Member.exists?(email: params[:unblock][:email]) && Blockeduser.exists?(Member.find_by_email(params[:unblock][:email]).id)
       temp = Member.where(email: params[:unblock][:email]).first
      Blockeduser.find(temp.id).destroy
      redirect_to "/members/#{temp.id}"
      return
    elsif !Member.exists?(email: params[:unblock][:email])
      @wrongunblock = true
      render 'unblock'
      return
    elsif !Blockeduser.exists?(Member.find_by_email(params[:unblock][:email]).id)
      @blockedunblock = true
      render 'unblock'
      return
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
    @alreadyadmin = false
    @wrongadmin = false
    @blankadmin = false
    @blockedadmin = false
    if params[:add][:email] == ""
      @blankadmin = true
        render 'add'
        return
    
    elsif Member.exists?(email: params[:add][:email]) && !Admin.exists?(Member.find_by_email(params[:add][:email]).id) && !Blockeduser.exists?(Member.find_by_email(params[:add][:email]).id)
    temp = Member.where(email: params[:add][:email]).first
    @admin = Admin.new(id: temp.id)
    @admin.save
   redirect_to "/members/#{temp.id}"
   elsif !Member.exists?(email: params[:add][:email])
     @wrongadmin = true
     render 'add'
     return
   elsif Admin.exists?(Member.find_by_email(params[:add][:email]).id)
     @alreadyadmin = true
     render 'add'
     return
   elsif Blockeduser.exists?(Member.find_by_email(params[:add][:email]).id)
     @blockedadmin = true
     render 'add'
     return
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
        if @member.update(params[:member].permit(:email, :password ,:fname , :lname, :DOB , :signature, :image))
          redirect_to "/members/#{params[:id]}"
        else
          render 'edit'
        end
      else
       if @member.update(params[:member].permit(:email, :password ,:fname , :lname, :DOB , :signature, :image))
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

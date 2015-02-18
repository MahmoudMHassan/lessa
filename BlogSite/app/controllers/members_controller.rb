class MembersController < ApplicationController
  def signup
    @member = Member.new(params.require(:member).permit(:email, :password , :fname , :lname, :DOB, :signature))
    if  @member.save
      log_in @member
      redirect_to "/members/#{@member.id}"
    else
    render 'create'

    end
  end

  def create
@member = Member.new
  end
  def add
    
  end
  def authorize
    if Member.exists?(email: params[:add][:email]) && !Admin.exists?(email: params[:add][:email])
    @test = Member.where(email: params[:add][:email]).first
    @admin = Admin.new(id: @test.id)
    @admin.save
   redirect_to "/members/#{@test.id}"
   else
     render 'add'
   end
  end

  def show
    @member = Member.find(params[:id])
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

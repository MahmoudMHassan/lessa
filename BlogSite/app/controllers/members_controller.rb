class MembersController < ApplicationController
   
    def new 
   @member = Member.new
 end
 
  def create
 #  Member.where("email = ?",params[:email]).first_or_create(:locked => false)
 #Member.find_or_create_by(email: params[:email])
  #@member=Member.new
 @member = Member.new(params.require(:member).permit(:email, :password , :fname , :lname, :DOB, :signature))
  if  @member.save
    session[:member_id] = @member.id
   # redirect_to '/members/login'
  redirect_to "/members/show"
  else
   # flash[:notice] = "Email must be unique"
   #redirect_to @member
 flash.now.alert ="Email must be unique"
 # flash[:notice]="Email must be uniqueee"
 # redirect_to members_path(@member), :flash => { :notice => "Enter unique email" }
  end

  def login
  end
 
 def show
  # @member = Member.find(params[:email])
 end
 end
 end
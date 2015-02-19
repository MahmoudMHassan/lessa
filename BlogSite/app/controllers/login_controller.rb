class LoginController < ApplicationController
  skip_before_filter :verify_authenticity_token
def new
  if logged_in?
    redirect_to root_path
  end
end

def login
  user = Member.where(:email => params[:login][:email].downcase).first
  if params[:login][:email].blank? || params[:login][:password].blank? || Blockeduser.exists?(user.id)
    render 'new'
    return
  end
 
  #member = Member.where(email: params[:login][:email].downcase).pluck(:id).first
 if Member.login?(params[:login][:email].downcase,params[:login][:password])
   #redirect_to '/posts/new'
    redirect_to root_path
   log_in user
  
    
  else
    render 'new'
  end
end
def logout
  sign_out
  redirect_to root_path
end
end
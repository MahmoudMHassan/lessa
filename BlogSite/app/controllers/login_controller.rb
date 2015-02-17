class LoginController < ApplicationController
  skip_before_filter :verify_authenticity_token
def new
  if logged_in?
    redirect_to root_path
  end
end

def login
  if params[:login][:email].blank? || params[:login][:password].blank?
    render 'new'
    return
  end
 
  #member = Member.where(email: params[:login][:email].downcase).pluck(:id).first
 if Member.login?(params[:login][:email].downcase,params[:login][:password])
   #redirect_to '/posts/new'
   log_in (params[:login])
    
    
  else
    render 'new'
  end
end
def logout
  log_out
  redirect_to root_path
end
end
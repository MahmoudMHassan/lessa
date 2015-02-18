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
 if Member.login?(params[:login][:email].downcase,params[:login][:password])
   log_in (params[:login])
    redirect_to '/posts/new'
    
  else
    render 'new'
  end
end
def logout
  log_out
  redirect_to root_path
end
end
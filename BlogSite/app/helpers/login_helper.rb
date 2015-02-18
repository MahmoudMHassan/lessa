module LoginHelper
  def log_in(user)
   # remember_token = User.new_remember_token
 #   cookies.permanent[:remember_token]=remember_token
#    member.update_attribute(:remember_token, Member.hash(remember_token))
    session[:user_id] = user.id
    self.current_user = user
    #redirect_to root_path
    #redirect_to "https://www.google.com/webhp?q=#{@current_user}"
  end
  def sign_out
    session[:user_id] = nil
  end
  #setter method
 def current_user=(user)
    @current_user = (user)
  end
  #getter method
 def current_user
    @current_user ||= Member.find(session[:user_id]) if session[:user_id]
  end
  
  def logged_in?
    !current_user.nil?
  end
  
end
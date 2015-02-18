module LoginHelper
  def log_in(member)
    
    session[:member_id] = member[:id]
    self.current_user
  end
  def log_out
    session[:member_id] = nil
  end
  def current_user=(user)
    @current_user = (user)
  end
  
  def current_user
    @current_user ||= Member.find_by(id: session[:member_id])
  end
  
  def logged_in?
    !current_user.nil?
  end
  
end
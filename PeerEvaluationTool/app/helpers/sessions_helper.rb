module SessionsHelper

  # Logs in to a user
  def login(user)
    session[:user_id] = user.id
  end

  # Returns current user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if @current_user.nil?
  end

  # Checks if user is logged in
  def logged_in?
    !current_user.nil?
  end
  
  # Logs out user
  def logout
    session.delete(:user_id)
    @current_user = nil
  end

end

module SessionsHelper

  # Logs in to a user
  def login(user)
    session[:user_id] = user.id
  end

  # Returns current user
  def current_user
    if @current_user.nil?
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  # Checks if user is logged in
  def logged_in?
    !current_user.nil?
  end

end

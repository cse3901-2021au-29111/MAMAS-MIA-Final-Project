class SessionsController < ApplicationController
  def new
  end

  # Creates a new session for user if login params are valid
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      login user
      redirect_to user
    else
      flash.now[:danger] = 'Incorrect Login Information'
      render 'new'
    end
  end

  def destroy
  end
end

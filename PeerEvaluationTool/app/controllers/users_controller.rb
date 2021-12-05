class UsersController < ApplicationController

  # Displays user with given parameter and group/teammates with instance variables @user, @group, @teammates
  def show
    @user = User.find(params[:id])
    t = @user.group_no
    @group = Group.find_by(group_number:t)
    @teammates = User.where(group_no:t)

  end

  # Creates new user with instance variable @user
  def new
    @user = User.new
  end

  # Creates a new user and attempts to save them into the db
  def create
    @user = User.new(user_params)
    if @user.save
      login @user
      flash.now[:success] = 'Thanks for signing up!'
      redirect_to @user
    else
      render 'new'
    end
  end

  # Private method for user parameters
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end

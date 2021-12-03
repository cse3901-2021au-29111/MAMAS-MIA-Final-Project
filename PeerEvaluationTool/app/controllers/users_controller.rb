class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    t = @user.group_no
    @group = Group.find_by(group_number:t)
    @teammates = User.where(group_no:t)
  end

  def new
    @user = User.new
  end

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

  def add_rating
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end

class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    @user.save
    render :users
  end

  def show
    @user = User.find(params[:id])
  end

  private #You are using private so that this method cannot be called outside it's class
  def user_params
    params.require(:user).permit(:username, :name, :password, :email)
  end
end

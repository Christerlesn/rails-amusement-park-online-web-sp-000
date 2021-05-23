class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  def show
    @user = User.find_by(:id => params[:id])
    session[:user_id] = @user.id
  end

  def index
    @users = User.all
  end


  private

  def user_params
    params.require(:user).permit(:name, :password, :happiness, :nausea, :tickets, :height)
  end
end

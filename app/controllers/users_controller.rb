class UsersController < ApplicationController

  def index
    @user = User.new
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User succesfully created"
      redirect_to("/questions")
    else
      alert[:notice] = "Invalid entries, try again please"
      render("index.html.erb")
    end
  end

  def edit
  end

  def show
  end

private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end

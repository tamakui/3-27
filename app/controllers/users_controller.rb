class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @books = @book
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    
  end
  
  def update
    @user = User.find(params[:id])
    @user = update(user_params)
    redirect_to user_path(user.id)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction)
  end
  
end

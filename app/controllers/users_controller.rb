class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
  end
  
  private
  def user_params
    params.require(:user).permit(:image)
  end
end

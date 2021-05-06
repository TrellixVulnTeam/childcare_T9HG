class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
  end

  def index
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "りにゅーしょく。へようこそ！"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :password,
                                   :password_confirmation)
    end
end
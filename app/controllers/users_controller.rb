class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:account, :username, :introduction, :icon_url, :cover_url)
    @user = User.new(user_params)
    if @user.save
      redirect_to :root
    else
      render :new
    end
  end
end

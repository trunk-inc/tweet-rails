class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(account: params[:account])

    binding.pry
    if user.present?
      session[:user_id] = user.id
      redirect_to :root
    else
      flash[:error] = "ログインに失敗しました"
      render :new
    end
  end
end

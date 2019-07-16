class SessionsController < ApplicationController
  def new
  end

  # セッションに保存を追加
  def create
    user = User.find_by(account: params[:account])

    if user.present?
      session[:user_id] = user.id
      redirect_to :root
    else
      flash[:error] = "ログインに失敗しました"
      render :new
    end
  end
end
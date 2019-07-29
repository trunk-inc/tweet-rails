class TimelineController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id])
    redirect_to new_session_path if @user.blank?
  end
end

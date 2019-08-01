class TweetsController < ApplicationController
  def new
    @tweet = Tweet.new
  end

  def create
    user = User.find_by(id: session[:user_id])
    if user.blank?
      redirect_to new_session_path
      return
    end

    @tweet = user.tweets.build(tweet_params)
    if @tweet.save
      redirect_to timeline_index_path
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:tweet)
  end
end

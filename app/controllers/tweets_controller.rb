class TweetsController < ApplicationController
  def index
    render json: Tweet.stream_for(current_user.id)
  end

  def create
    tweet = Tweet.create(body: params[:body], user: current_user)

    render json: tweet
  end
end

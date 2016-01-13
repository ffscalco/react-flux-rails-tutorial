class TweetsController < ApplicationController
  def index
    render json: Tweet.all
  end

  def create
    tweet = Tweet.create(body: params[:tweet], user: current_user)

    render json: tweet
  end
end

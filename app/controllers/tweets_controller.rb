class TweetsController < ApplicationController
  def index
    render json: Tweet.includes(:user).order(created_at: :desc).all
  end

  def create
    tweet = Tweet.create(body: params[:body], user: current_user)

    render json: tweet
  end
end

class FollowersController < ApplicationController
  def random
    render json: User.where.not(id: current_user.id).order("random()")
  end

  def create
    follower = Follower.create(user_id: params[:user_id],
                                followed_by: current_user)

    render json: follower
  end
end
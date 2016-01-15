class Follower < ActiveRecord::Base
  belongs_to :user
  belongs_to :followed_by, class_name: User
end
